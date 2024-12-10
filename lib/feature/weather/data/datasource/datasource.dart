
import 'package:dio/dio.dart';
import 'package:weather/feature/weather/data/models/weather_model.dart';

class WeatherDataSource {
  final Dio dio;
  final String apiKey;
  WeatherDataSource(this.dio, this.apiKey);

  Future<WeatherModel> fetchData(String location) async {
      dio.options.headers = {
        "key" : apiKey,
      };
      final response = await dio.get("http://api.weatherapi.com/v1/current.json?q=$location");
      if (response.statusCode == 200) {
        return WeatherModel.fromJson(response.data);
          // data.map((e) => WeatherModel.fromJson(e)).toList();
      } else {
        throw Exception("StatusCode: ${response.statusCode}");
      }
  }
}