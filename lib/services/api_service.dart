import '../data/models/current_weather.dart';
import 'package:http/http.dart' as http;

class ApiService {
  String baseUrl = 'https://api.openweathermap.org/data/2.5';
  String appId = "64794067aae5085c8a86af6341c1ca7a";

  Future<CurrentWeather?> getCurrentWeather(String lat, String lon) async {
    final response = await http
        .get(Uri.parse("$baseUrl/weather/?lat=$lat&lon=$lon&appId=$appId"));

    if(response.statusCode==200){
      return null;
    }
    return null;
  }
}
