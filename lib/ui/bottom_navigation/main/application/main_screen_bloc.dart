import 'dart:async';

import 'package:dtt/api/models/house.dart';
import 'package:dtt/api/repository/api_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_screen_bloc.freezed.dart';
part 'main_screen_event.dart';
part 'main_screen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  MainScreenBloc({required this.apiRepository})
      : super(
          MainScreenState.init(),
        ) {
    on<_Init>(_init);
  }
  final ApiRepository apiRepository;

  Future<void> _init(_Init e, Emitter<MainScreenState> emit) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
    final response = await apiRepository.fetchHouses();

    response.fold((l) {
      emit(state.copyWith(isLoading: false, isError: true, apiErrorString: l.error?.message ?? 'Generic error'));
    }, (r) {
      emit(state.copyWith(isLoading: false, housesData: r.data!));
    });
  }
}
