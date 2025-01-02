import 'package:dio/dio.dart';
import 'package:dtt/api/models/house.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @GET('/house')
  Future<List<House>> getHouses();
}
