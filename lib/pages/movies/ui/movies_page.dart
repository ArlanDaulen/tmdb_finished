import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:tmdb/models/popular_model.dart';
import 'package:tmdb/pages/movie_details/bloc/movie_details_bloc.dart';
import 'package:tmdb/pages/movie_details/bloc/movie_details_event.dart';
import 'package:tmdb/pages/movie_details/ui/movie_details.dart';
import 'package:tmdb/pages/movies/bloc/movies_bloc.dart';
import 'package:tmdb/pages/movies/bloc/movies_event.dart';
import 'package:tmdb/pages/movies/bloc/movies_state.dart';
import 'package:tmdb/repositories/movies_repository.dart';
import 'package:tmdb/subdiary/size_config.dart';
import 'package:tmdb/subdiary/theme.dart';
import 'package:tmdb/subdiary/ui_helper.dart';

class MoviesPage extends StatelessWidget {
  String baseUrlImage = 'http://image.tmdb.org/t/p/w500/';

  final MoviesBloc moviesBloc;

  MoviesPage({required this.moviesBloc});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
        ),
        padding: EdgeInsets.only(
          top: getProportionateScreenHeight(10),
          left: getProportionateScreenWidth(10),
          right: getProportionateScreenWidth(10),
        ),
        child: BlocBuilder<MoviesBloc, MovieState>(
          bloc: moviesBloc,
          builder: (_, state) {
            return state.when(
              init: () => _init(),
              loading: () => Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (changes, containerHeight) =>
                  _loaded(changes, containerHeight, context),
              onOffline: (savedChangess) => _savedLoad(savedChangess),
            );
          },
        ),
      ),
    );
  }

  Padding _init() => Padding(
        padding: EdgeInsets.only(
          left: getProportionateScreenWidth(20),
          right: getProportionateScreenWidth(20),
          top: getProportionateScreenHeight(10),
        ),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 3,
          separatorBuilder: (_, index) => UIHelper.verticalSpace(30),
          itemBuilder: (_, index) => Container(
            color: Colors.green,
            child: Center(child: Text('Movie $index')),
          ),
        ),
      );

  Widget _loaded(PopularModel changes, double containerHeight, context) =>
      LazyLoadScrollView(
        onEndOfPage: () => moviesBloc.add(MoviesEvent.loadMore()),
        child: RefreshIndicator(
          onRefresh: () async => moviesBloc..add(MoviesEvent.load()),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: moviesBloc.length!,
                separatorBuilder: (_, index) => UIHelper.verticalSpace(20),
                itemBuilder: (_, index) => Container(
                  // color: Colors.green,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BlocProvider(
                          create: (_) => MovieDetailsBloc(MoviesRepository())
                            ..add(
                              MovieDetailsEvent.load(
                                changes.results![index].id!,
                              ),
                            ),
                          child: MovieDetails(
                            title: changes.results![index].title!,
                          ),
                        ),
                      ),
                    ),
                    child: Container(
                      height: getProportionateScreenHeight(430),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: new ColorFilter.mode(
                              AppColors.backgroundColor.withOpacity(0.5),
                              BlendMode.dstATop),
                          image: new NetworkImage(
                            baseUrlImage +
                                moviesBloc.changess.results![index].posterPath!,
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                margin: EdgeInsets.symmetric(
                                  vertical: getProportionateScreenHeight(10),
                                  horizontal: getProportionateScreenWidth(10),
                                ),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(90),
                                ),
                                child: Text(
                                  moviesBloc
                                      .changess.results![index].voteAverage
                                      .toString(),
                                ),
                              ),
                              Container(
                                width: 60,
                                height: 60,
                                margin: EdgeInsets.symmetric(
                                  vertical: getProportionateScreenHeight(10),
                                  horizontal: getProportionateScreenWidth(10),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(90),
                                ),
                                child: Icon(
                                  Icons.star,
                                  color: AppColors.starColor,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    moviesBloc.changess.results![index]
                                        .originalTitle!,
                                    style: TextStyle(
                                      color: AppColors.whiteColors,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  UIHelper.verticalSpace(
                                      getProportionateScreenHeight(10)),
                                  Text(
                                    moviesBloc
                                        .changess.results![index].releaseDate!,
                                    style: TextStyle(
                                      color: AppColors.whiteColors,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                height: containerHeight,
                child: CircularProgressIndicator(),
              ),
            ],
          ),
        ),
      );
  Widget _savedLoad(Box<Results> savedChangess) =>
      ValueListenableBuilder<Box<Results>>(
        valueListenable: moviesBloc.box.listenable(),
        builder: (context, box, _) => RefreshIndicator(
          onRefresh: () async => moviesBloc..add(MoviesEvent.load()),
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            separatorBuilder: (_, index) => UIHelper.verticalSpace(20),
            itemBuilder: (_, index) => Container(
              // color: Colors.green,
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => BlocProvider(
                      create: (_) => MovieDetailsBloc(MoviesRepository())
                        ..add(
                          MovieDetailsEvent.load(
                            savedChangess.values.toList()[index].id!,
                          ),
                        ),
                      child: MovieDetails(
                        title: savedChangess.values.toList()[index].title!,
                      ),
                    ),
                  ),
                ),
                child: Container(
                  height: getProportionateScreenHeight(430),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: new DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          AppColors.backgroundColor.withOpacity(0.5),
                          BlendMode.dstATop),
                      image: new NetworkImage(
                        baseUrlImage +
                            savedChangess.values.toList()[index].posterPath!,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            margin: EdgeInsets.symmetric(
                              vertical: getProportionateScreenHeight(10),
                              horizontal: getProportionateScreenWidth(10),
                            ),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(90),
                            ),
                            child: Text(
                              savedChangess.values
                                  .toList()[index]
                                  .voteAverage
                                  .toString(),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            margin: EdgeInsets.symmetric(
                              vertical: getProportionateScreenHeight(10),
                              horizontal: getProportionateScreenWidth(10),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(90),
                            ),
                            child: Icon(
                              Icons.star,
                              color: AppColors.starColor,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                savedChangess.values
                                    .toList()[index]
                                    .originalTitle!,
                                style: TextStyle(
                                  color: AppColors.whiteColors,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              UIHelper.verticalSpace(
                                  getProportionateScreenHeight(10)),
                              Text(
                                savedChangess.values
                                    .toList()[index]
                                    .releaseDate!,
                                style: TextStyle(
                                  color: AppColors.whiteColors,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
