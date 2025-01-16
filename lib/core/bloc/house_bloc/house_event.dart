part of 'house_bloc.dart';

@Freezed()
class HouseEvent with _$HouseEvent {
  const factory HouseEvent.init() = _Init;
  const factory HouseEvent.search({
    required String phrase,
  }) = _Search;
  const factory HouseEvent.reSort() = _ReSort;
}
