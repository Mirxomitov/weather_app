import 'package:equatable/equatable.dart';

class DirectionGeocoding extends Equatable {
  final String name;
  final double lat;
  final double lon;
  final String country;

  DirectionGeocoding({
    required this.name,
    required this.lat,
    required this.lon,
    required this.country,
  });

  @override
  String toString() {
    return 'DirectionGeocoding(name: $name, lat: $lat, lon: $lon, country: $country)';
  }

  @override
  List<Object> get props => [name, lat, lon, country];

  factory DirectionGeocoding.fromJson(List<dynamic> json) {
    return DirectionGeocoding(
      name: json[0]['name'],
      lat: json[0]['lat'],
      lon: json[0]['lon'],
      country: json[0]['country'],
    );
  }
}
