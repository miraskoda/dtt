import 'dart:async';

import 'package:app_settings/app_settings.dart';
import 'package:dtt/core/injector/injector.dart';
import 'package:dtt/services/location_service/location_service.dart';
import 'package:dtt/ui/bottom_navigation/info/application/location_event.dart';
import 'package:dtt/ui/bottom_navigation/info/application/location_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationInitial()) {
    on<CheckLocationStatus>(_onCheckLocationStatus);
    on<OpenAppSettings>(_onOpenAppSettings);
  }
  final Location _location = Injector.instance<LocationService>().location;

  Future<void> _onCheckLocationStatus(
    CheckLocationStatus event,
    Emitter<LocationState> emit,
  ) async {
    emit(LocationLoading());

    try {
      bool serviceEnabled = await _location.serviceEnabled();
      if (!serviceEnabled) {
        serviceEnabled = await _location.requestService();
        if (!serviceEnabled) {
          emit(LocationServiceDisabled());
          return;
        }
      }

      PermissionStatus permissionGranted = await _location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        permissionGranted = await _location.requestPermission();
        if (permissionGranted != PermissionStatus.granted) {
          emit(LocationPermissionDenied());
          return;
        }
      }

      emit(LocationEnabled());
    } catch (e) {
      emit(LocationError(e.toString()));
    }
  }

  Future<void> _onOpenAppSettings(
    OpenAppSettings event,
    Emitter<LocationState> emit,
  ) async {
    unawaited(AppSettings.openAppSettings(type: AppSettingsType.location));
  }
}
