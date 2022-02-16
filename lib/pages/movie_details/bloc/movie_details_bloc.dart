import 'dart:convert';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:tmdb/models/movie_details_model.dart';
import 'package:tmdb/pages/movie_details/bloc/movie_details_event.dart';
import 'package:tmdb/pages/movie_details/bloc/movie_details_state.dart';
import 'package:tmdb/repositories/movies_repository.dart';
import 'package:http/http.dart' as http;

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final MoviesRepository moviesRepository;

  MovieDetailsBloc(this.moviesRepository) : super(MovieDetailsLoadingState()) {
    on<MoviDetailsLoadEvent>((event, emit) async {
      log('Getting movie details');
      emit(MovieDetailsState.loading());
      var result = await http.get(
        Uri.parse(
            'https://api.themoviedb.org/3/movie/${event.movieId}?api_key=7b79568d4e94ac70052f8e960cc7aa12&language=en-US'),
      );
      log(result.statusCode.toString());
      if (result.statusCode == 200) {
        var details = MovieDetailsModel.fromJson(json.decode(result.body));
        emit(MovieDetailsLoadedState(details));
        
      } else {
        log(result.statusCode.toString());
      }
    });
  }
}
