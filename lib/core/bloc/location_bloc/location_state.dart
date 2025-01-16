part of 'location_bloc.dart';

@Freezed()
class LocationState with _$LocationState {
  const factory LocationState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    String? errorMessage,
    LocationData? locationData,
  }) = _LocationState;

  factory LocationState.init() => const LocationState();
}
