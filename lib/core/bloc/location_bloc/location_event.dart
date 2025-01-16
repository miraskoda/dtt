part of 'location_bloc.dart';

@Freezed()
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.checkStatus() = CheckLocationStatus;
  const factory LocationEvent.openAppSettings() = OpenAppSettings;
  const factory LocationEvent.getLocation() = GetLocationEvent;
}
