part of 'main_screen_bloc.dart';

@Freezed()
class MainScreenEvent with _$MainScreenEvent {
  const factory MainScreenEvent.init({required bool isFavorite}) = _Init;
  const factory MainScreenEvent.search({
    required String phrase,
  }) = _Search;
  const factory MainScreenEvent.reSort() = _ReSort;
  const factory MainScreenEvent.toggleFav({
    required String id,
  }) = _ToggleFav;
}
