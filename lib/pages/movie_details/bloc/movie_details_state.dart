import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdb/models/movie_details_model.dart';

part 'movie_details_state.freezed.dart';

@freezed
class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState.loading() = MovieDetailsLoadingState;
  const factory MovieDetailsState.loaded(MovieDetailsModel details) = MovieDetailsLoadedState;
  const factory MovieDetailsState.error() = MovieDetailsErrorState;  
}
