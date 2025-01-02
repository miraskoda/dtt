import 'package:json_annotation/json_annotation.dart';

part 'house.g.dart';

@JsonSerializable()
class House {
  House({
    required this.id,
    required this.image,
    required this.price,
    required this.bedrooms,
    required this.bathrooms,
    required this.size,
    required this.description,
    required this.zip,
    required this.city,
    required this.latitude,
    required this.longitude,
    required this.createdDate,
  });

  factory House.fromJson(Map<String, dynamic> json) => _$HouseFromJson(json);
  final int id;
  final String image;
  final int price;
  final int bedrooms;
  final int bathrooms;
  final int size;
  final String description;
  final String zip;
  final String city;
  final double latitude;
  final double longitude;
  final DateTime createdDate;
  Map<String, dynamic> toJson() => _$HouseToJson(this);
}
