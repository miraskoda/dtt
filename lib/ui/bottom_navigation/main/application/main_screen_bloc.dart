import 'dart:async';

import 'package:dtt/api/models/house.dart';
import 'package:dtt/api/repository/api_repository.dart';
import 'package:dtt/core/injector/injector.dart';
import 'package:dtt/core/keys/app_keys.dart';
import 'package:dtt/services/local_storage_service/local_storage_service.dart';
import 'package:dtt/services/location_service/location_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';

part 'main_screen_bloc.freezed.dart';
part 'main_screen_event.dart';
part 'main_screen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  MainScreenBloc({
    required this.apiRepository,
    required this.locationService,
    required this.localStorageService,
  }) : super(
          MainScreenState.init(),
        ) {
    on<_Init>(_init);
    on<_Search>(_search);
    on<_ReSort>(_reSort);
    on<_ToggleFav>(_toggleFav);
  }

  final ApiRepository apiRepository;
  final LocationService locationService;
  final LocalStorageService localStorageService;

  Future<void> _init(_Init e, Emitter<MainScreenState> emit) async {
    emit(
      state.copyWith(
        isLoading: true,
        isFavorite: e.isFavorite,
      ),
    );
    //if there is some data already, not need to perform request
    if (state.housesData.isNotEmpty) {
      final housesData = processHouses(
        state.housesData,
      );
      emit(
        state.copyWith(
          isLoading: false,
          housesData: state.housesData,
          filteredHouses: housesData,
          apiErrorString: null,
          isError: false,
        ),
      );
    } else {
      //fetch houses
      final response = await apiRepository.fetchHouses();
      response.fold((l) {
        emit(state.copyWith(isLoading: false, isError: true, apiErrorString: l.error?.message ?? 'Generic error'));
      }, (r) {
        final housesData = processHouses(
          r.data!,
        );
        emit(
          state.copyWith(
            isLoading: false,
            housesData: r.data!,
            filteredHouses: housesData,
            apiErrorString: null,
            isError: false,
          ),
        );
      });
    }

    // location
    emit(state.copyWith(location: await _getLocation()));
  }

  List<House> processHouses(
    List<House> houses,
  ) {
    //sorting by price and checking favs
    final List<House> newHouses = List.from(houses)..sort((a, b) => a.price.compareTo(b.price));
    final List<House> housesData = newHouses.where((house) {
      return !state.isFavorite || isInFavorites(house.id);
    }).toList();
    return housesData;
  }

  Future<LocationData?> _getLocation() async {
    return locationService.getCurrentLocation();
  }

  Future<void> _search(_Search e, Emitter<MainScreenState> emit) async {
    final searchText = e.phrase.toLowerCase();
    final filteredHouses = state.housesData.where((house) {
      return house.city.toLowerCase().contains(searchText) ||
          house.price.toString().contains(searchText) ||
          (house.zip.toLowerCase().contains(searchText));
    }).toList();
    emit(
      state.copyWith(
        searchText: searchText,
        filteredHouses: processHouses(
          filteredHouses,
        ),
      ),
    );
  }

  Future<void> _reSort(_ReSort e, Emitter<MainScreenState> emit) async {
    emit(
      state.copyWith(
        filteredHouses: state.filteredHouses.reversed.toList(),
      ),
    );
  }

  Future<void> _toggleFav(_ToggleFav e, Emitter<MainScreenState> emit) async {
    final List<String> list = localStorageService.getStringList(key: AppKeys.favConst) ?? [];

    if (state.isFavorite) {
      final int index = list.indexOf(e.id);
      list.removeAt(index);
      localStorageService.setStringList(key: AppKeys.favConst, value: list);
    } else {
      if (list.contains(e.id)) {
        return;
      }
      localStorageService.setStringList(key: AppKeys.favConst, value: [...list, e.id]);
    }
    // reload data in fav bloc
    Injector.instance<MainScreenBloc>(instanceName: AppKeys.favConst).add(const MainScreenEvent.init(isFavorite: true));
  }

  bool isInFavorites(int id) {
    final favList = localStorageService.getStringList(key: AppKeys.favConst) ?? [];
    return favList.contains(id.toString());
  }
}
