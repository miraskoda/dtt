import 'dart:async';

import 'package:app_settings/app_settings.dart';
import 'package:dtt/core/bloc/location_bloc/location_event.dart';
import 'package:dtt/core/bloc/location_bloc/location_state.dart';
import 'package:dtt/core/injector/injector.dart';
import 'package:dtt/services/location_service/location_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc({
    required this.locationService,
  }) : super(LocationInitial()) {
    on<CheckLocationStatus>(_onCheckLocationStatus);
    on<OpenAppSettings>(_onOpenAppSettings);
    on<GetLocationEvent>(_onGetLocation);
  }
  final LocationService locationService;
  final Location _location = Injector.instance<LocationService>().location;

  Future<void> _onCheckLocationStatus(
    CheckLocationStatus event,
    Emitter<LocationState> emit,
  ) async {
    emit(LocationLoading(locationData: state.locationData));

    try {
      bool serviceEnabled = await _location.serviceEnabled();
      if (!serviceEnabled) {
        serviceEnabled = await _location.requestService();
        if (!serviceEnabled) {
          emit(LocationServiceDisabled(locationData: state.locationData));
          return;
        }
      }

      PermissionStatus permissionGranted = await _location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        permissionGranted = await _location.requestPermission();
        if (permissionGranted != PermissionStatus.granted) {
          emit(LocationPermissionDenied(locationData: state.locationData));
          return;
        }
      }

      emit(LocationEnabled(locationData: state.locationData));
    } catch (e) {
      emit(LocationError(e.toString(), locationData: state.locationData));
    }
  }

  Future<void> _onOpenAppSettings(
    OpenAppSettings event,
    Emitter<LocationState> emit,
  ) async {
    unawaited(AppSettings.openAppSettings(type: AppSettingsType.location));
  }

  Future<void> _onGetLocation(
    GetLocationEvent event,
    Emitter<LocationState> emit,
  ) async {
    if (state.locationData != null) return;
    emit(LocationLoading(locationData: state.locationData));
    try {
      final locationData = await locationService.getCurrentLocation();
      emit(LocationDataState(locationData: locationData));
    } catch (e) {
      emit(LocationError(e.toString(), locationData: state.locationData));
    }
  }
}
