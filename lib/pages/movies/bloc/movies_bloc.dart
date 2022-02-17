import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmdb/models/popular_model.dart';
import 'package:tmdb/pages/movies/bloc/movies_event.dart';
import 'package:tmdb/pages/movies/bloc/movies_state.dart';
import 'package:tmdb/repositories/movies_repository.dart';
import 'package:http/http.dart' as http;

class MoviesBloc extends Bloc<MoviesEvent, MovieState> {
  final MoviesRepository moviesRepository;
  late Box<Results> box;
  int? length;
  var changess;
  double? containerHeight;

  MoviesBloc(this.moviesRepository) : super(MovieState.init()) {
    on<MoviesLoadingEvent>((event, emit) async {
      containerHeight = 0;
      length = 10;
      log('length is $length');

      StreamController<ConnectivityResult> connectionStatusController =
          StreamController<ConnectivityResult>();

      var connectivutyResult = await Connectivity().checkConnectivity();
      log(connectivutyResult.toString());

      log('Init called');
      emit(MovieState.loading());
      if (connectivutyResult != ConnectivityResult.none) {
        var result = await http.get(
          Uri.parse(
              'https://api.themoviedb.org/3/movie/popular?api_key=7b79568d4e94ac70052f8e960cc7aa12&language=en-US&page=1'),
        );
        changess = PopularModel.fromJson(json.decode(result.body));
        log(changess.results!.length.toString());
        log(result.statusCode.toString());
        if (result.statusCode == 200) {
          log(changess.results![0].backdropPath.toString());

          box = Hive.isBoxOpen('movies')
              ? Hive.box<Results>('movies')
              : await Hive.openBox<Results>('movies');

          if (box.values.length < length!) {
            for (int i = 0; i < length!; i++) {
              await box.add(changess.results![i]);
              log('$i added to box');
            }
          }
          log(box.values.length.toString());
          emit(MovieState.loaded(changess, containerHeight!));
          //Nurkeldi kotak je
          // await box.clear();
          // log(box.values.length.toString());
        } else {
          log(result.statusCode.toString());
        }
      } else {
        box = Hive.isBoxOpen('movies')
            ? Hive.box<Results>('movies')
            : await Hive.openBox<Results>('movies');
        emit(MovieState.onOffline(box));
        log('Offline mode');
      }
    });

    on<MoviesLoadingMoreEvent>((event, emit) async {
      log('Loading more called');
      log(changess.results!.length.toString());
      containerHeight = 60;
      emit(MovieState.loaded(changess, containerHeight!));
      await Future.delayed(Duration(seconds: 2), () {
        containerHeight = 0;
        length = 20;
        log('length is $length');

        emit(MovieState.loaded(changess, containerHeight!));
      });
    });
  }
}
