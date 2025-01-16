import 'dart:async';

import 'package:dtt/api/models/house.dart';
import 'package:dtt/api/repository/api_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'house_bloc.freezed.dart';
part 'house_event.dart';
part 'house_state.dart';

class HouseBloc extends Bloc<HouseEvent, HouseState> {
  HouseBloc({
    required this.apiRepository,
  }) : super(
          HouseState.init(),
        ) {
    on<_Init>(_init);
    on<_Search>(_search);
    on<_ReSort>(_reSort);
  }

  final ApiRepository apiRepository;

  Future<void> _init(_Init e, Emitter<HouseState> emit) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
    //fetch houses
    final response = await apiRepository.fetchHouses();
    response.fold((l) {
      emit(state.copyWith(isLoading: false, isError: true, apiErrorString: l.error?.message ?? 'Generic error'));
    }, (r) {
      //sorting by price
      r.data!.sort((a, b) => a.price.compareTo(b.price));
      emit(
        state.copyWith(
          isLoading: false,
          housesData: r.data!,
          filteredHouses: r.data!,
          apiErrorString: null,
          isError: false,
        ),
      );
    });
  }

  Future<void> _search(_Search e, Emitter<HouseState> emit) async {
    final searchText = e.phrase.toLowerCase();
    final filteredHouses = state.housesData.where((house) {
      return house.city.toLowerCase().contains(searchText) ||
          house.price.toString().contains(searchText) ||
          (house.zip.toLowerCase().contains(searchText));
    }).toList();
    emit(
      state.copyWith(
        searchText: searchText,
        filteredHouses: filteredHouses,
      ),
    );
  }

  Future<void> _reSort(_ReSort e, Emitter<HouseState> emit) async {
    emit(
      state.copyWith(
        filteredHouses: state.filteredHouses.reversed.toList(),
      ),
    );
  }
}
