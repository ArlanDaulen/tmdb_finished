import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmdb/models/popular_model.dart';
import 'package:tmdb/pages/movies/bloc/movies_bloc.dart';
import 'package:tmdb/pages/movies/bloc/movies_event.dart';
import 'package:tmdb/pages/movies/ui/movies_page.dart';
import 'package:tmdb/repositories/movies_repository.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ResultsAdapter());
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MoviesBloc moviesBloc = MoviesBloc(MoviesRepository());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: BlocProvider(
        
          create: (context) => moviesBloc,
          child: MoviesPage(
            moviesBloc: moviesBloc..add(MoviesEvent.load()),
          )),
    );
  }
}
