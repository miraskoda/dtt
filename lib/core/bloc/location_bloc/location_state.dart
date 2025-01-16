import 'package:location/location.dart';

abstract class LocationState {
  LocationState({this.locationData});

  final LocationData? locationData;
}

class LocationInitial extends LocationState {}

class LocationLoading extends LocationState {
  LocationLoading({super.locationData});
}

class LocationEnabled extends LocationState {
  LocationEnabled({super.locationData});
}

class LocationPermissionDenied extends LocationState {
  LocationPermissionDenied({super.locationData});
}

class LocationServiceDisabled extends LocationState {
  LocationServiceDisabled({super.locationData});
}

class LocationError extends LocationState {
  LocationError(this.message, {super.locationData});
  final String message;
}

class LocationDataState extends LocationState {
  LocationDataState({required super.locationData});
}
