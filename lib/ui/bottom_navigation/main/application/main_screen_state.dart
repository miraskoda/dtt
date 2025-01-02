part of 'main_screen_bloc.dart';

@Freezed()
class MainScreenState with _$MainScreenState {
  const factory MainScreenState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    String? apiErrorString,
    @Default([]) List<House> housesData,
    @Default([]) List<House> filteredHouses,
    @Default('') String searchText,
  }) = _MainScreenState;

  factory MainScreenState.init() => const MainScreenState();
}
