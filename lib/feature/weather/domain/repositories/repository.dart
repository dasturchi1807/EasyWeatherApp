import 'package:weather/feature/weather/data/models/weather_model.dart';

abstract class WeatherRepository {
  Future<WeatherModel> getWeather(String location);
}