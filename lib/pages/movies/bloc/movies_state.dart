import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmdb/models/popular_model.dart';

part 'movies_state.freezed.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.init() = Init;
  const factory MovieState.loading() = Loading;
  const factory MovieState.loaded(PopularModel changes, double containerHeight) = Loaded;
  const factory MovieState.onOffline(Box<Results> savedChanges) = OnOffline;
}
