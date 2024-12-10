import 'package:weather/feature/weather/data/models/weather_model.dart';
import 'package:weather/feature/weather/domain/repositories/repository.dart';

class GetWeatherUseCase {
  final WeatherRepository _repository;

  GetWeatherUseCase(this._repository);

  Future<WeatherModel> call(String location) async {
    return await _repository.getWeather(location);
  }
}