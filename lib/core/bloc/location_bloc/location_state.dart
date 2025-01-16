import 'package:location/location.dart';

abstract class LocationState {}

class LocationInitial extends LocationState {}

class LocationLoading extends LocationState {}

class LocationEnabled extends LocationState {}

class LocationPermissionDenied extends LocationState {}

class LocationServiceDisabled extends LocationState {}

class LocationError extends LocationState {
  LocationError(this.message);
  final String message;
}

class LocationDataState extends LocationState {
  LocationDataState(this.locationData);
  final LocationData? locationData;
}
