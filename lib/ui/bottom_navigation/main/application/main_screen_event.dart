part of 'main_screen_bloc.dart';

@Freezed()
class MainScreenEvent with _$MainScreenEvent {
  const factory MainScreenEvent.init() = _Init;
  const factory MainScreenEvent.search({
    required String phrase,
  }) = _Search;
}
