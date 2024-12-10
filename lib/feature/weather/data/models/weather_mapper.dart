import 'package:weather/feature/weather/data/models/weather_model.dart';
import 'package:weather/feature/weather/domain/entities/entity.dart';

class WeatherMapper {
  static WeatherEntity toEntity(WeatherModel model) {
    return WeatherEntity(
      icon: model.current.condition.icon,
      text: model.current.condition.text,
      temp_c: model.current.temp_c,
      name: model.location.name,
      country: model.location.country,
      is_day: model.current.is_day,
      wind_dir: model.current.wind_dir,
      humidity: model.current.humidity,
      wind_kph: model.current.wind_kph,
      feelslike_c: model.current.feelslike_c,
      vis_km: model.current.vis_km,
    );
  }
}
