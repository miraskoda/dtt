part of 'house_bloc.dart';

@Freezed()
class HouseState with _$HouseState {
  const factory HouseState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    String? apiErrorString,
    @Default([]) List<House> housesData,
    @Default([]) List<House> filteredHouses,
    @Default('') String searchText,
  }) = _HouseState;

  factory HouseState.init() => const HouseState();
}
