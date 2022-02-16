import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb/models/popular_model.dart';
import 'package:tmdb/pages/movie_details/bloc/movie_details_bloc.dart';
import 'package:tmdb/pages/movie_details/bloc/movie_details_state.dart';
import 'package:tmdb/subdiary/size_config.dart';
import 'package:tmdb/subdiary/theme.dart';
import 'package:tmdb/subdiary/ui_helper.dart';

class MovieDetails extends StatelessWidget {
  final String title;
  // final List<Results> model;
  // final int index;

  MovieDetails({required this.title});

  String baseUrlImage = 'http://image.tmdb.org/t/p/w500/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Container(
        color: AppColors.backgroundColor,
        child: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
          builder: (_, state) => state.when(
              loading: () => Center(
                    child: CircularProgressIndicator(),
                  ),
              loaded: (details) => ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      Stack(
                        children: [
                          Positioned(
                            child: Center(
                              child: Image.network(
                                baseUrlImage + details.backdropPath.toString(),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              width: 45,
                              height: 45,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text(
                                details.voteAverage.toString(),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                Icons.star,
                                color: AppColors.starColor,
                                size: 40,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: getProportionateScreenHeight(15),
                            left: getProportionateScreenWidth(10),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                          getProportionateScreenWidth(5),
                                      vertical: getProportionateScreenHeight(5),
                                    ),
                                    // alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: AppColors.whiteColors,
                                      borderRadius: BorderRadius.circular(5),
                                    ),

                                    child: Text(
                                      details.title.toString(),
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  UIHelper.verticalSpace(
                                    getProportionateScreenHeight(10),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                          getProportionateScreenWidth(5),
                                      vertical: getProportionateScreenHeight(5),
                                    ),
                                    // alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: AppColors.whiteColors,
                                      borderRadius: BorderRadius.circular(5),
                                    ),

                                    child: Text(
                                      details.releaseDate.toString(),
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      UIHelper.verticalSpace(getProportionateScreenHeight(20)),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(10)),
                        child: Text(
                          details.overview!,
                          style: TextStyle(
                            color: AppColors.whiteColors,
                          ),
                        ),
                      ),
                    ],
                  ),
              error: () => Center(
                    child: Text('Smth went wrong'),
                  )),
        ),
      ),
    );
  }
}
