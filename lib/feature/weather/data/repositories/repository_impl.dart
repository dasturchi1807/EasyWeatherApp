import 'package:weather/feature/weather/data/datasource/datasource.dart';
import 'package:weather/feature/weather/data/models/weather_model.dart';
import 'package:weather/feature/weather/domain/repositories/repository.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherDataSource _dataSource;
  WeatherRepositoryImpl(this._dataSource);

  @override
  Future<WeatherModel> getWeather(String location) async {
    return await _dataSource.fetchData(location);
  }
}