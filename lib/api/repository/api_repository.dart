import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dtt/api/client/api_client.dart';
import 'package:dtt/api/models/house.dart';
import 'package:dtt/core/resources/data_state.dart';
import 'package:flutter/foundation.dart';

abstract class ApiRepository {
  Future<Either<DataFailed<String>, DataSuccess<List<House>>>> fetchHouses();
}

class ApiRepositoryImpl implements ApiRepository {
  ApiRepositoryImpl(this._apiClient);
  final ApiClient _apiClient;

  @override
  Future<Either<DataFailed<String>, DataSuccess<List<House>>>> fetchHouses() async {
    try {
      final response = await _apiClient.getHouses();
      return Right(DataSuccess(response));
    } on DioException catch (e) {
      if (kDebugMode) {
        print('Error fetching data: $e');
      }
      return Left(DataFailed(e));
    }
  }
}
