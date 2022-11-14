import 'package:weather_sheet/data/models/coordination.dart';
import 'package:weather_sheet/data/models/weather.dart';

class CurrentWeather {
  Coordination coord;
  List<Weather> weather;
  String base;
  num visibility;
  num dt;
  num timezone;
  num id;
  String name;
  num cod;

  CurrentWeather({
    required this.coord,
    required this.weather,
    required this.base,
    required this.visibility,
    required this.dt,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });
}
