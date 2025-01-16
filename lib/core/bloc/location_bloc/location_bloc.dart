import 'dart:async';

import 'package:app_settings/app_settings.dart';
import 'package:dtt/core/injector/injector.dart';
import 'package:dtt/services/location_service/location_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';

part 'location_bloc.freezed.dart';
part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc({
    required this.locationService,
  }) : super(LocationState.init()) {
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
    emit(state.copyWith(isLoading: true, isError: false));

    try {
      bool serviceEnabled = await _location.serviceEnabled();
      if (!serviceEnabled) {
        serviceEnabled = await _location.requestService();
        if (!serviceEnabled) {
          emit(state.copyWith(isLoading: false, isError: true, errorMessage: 'Location service is disabled.'));
          return;
        }
      }

      PermissionStatus permissionGranted = await _location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        permissionGranted = await _location.requestPermission();
        if (permissionGranted != PermissionStatus.granted) {
          emit(state.copyWith(isLoading: false, isError: true, errorMessage: 'Permission denied.'));
          return;
        }
      }

      emit(
        state.copyWith(
          isLoading: false,
        ),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, isError: true, errorMessage: e.toString()));
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
    emit(state.copyWith(isLoading: true, isError: false));

    try {
      final locationData = await locationService.getCurrentLocation();
      emit(state.copyWith(isLoading: false, locationData: locationData));
    } catch (e) {
      emit(state.copyWith(isLoading: false, isError: true, errorMessage: e.toString()));
    }
  }
}
