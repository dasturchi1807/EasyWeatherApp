import 'package:weather/feature/weather/data/models/condition_model.dart';

class CurrentModel {
  final double temp_c;
  final double temp_f;
  final int is_day;
  final Condition condition;
  final int humidity;
  final double wind_kph;
  final String wind_dir;
  final double feelslike_c;
  final double vis_km;


  CurrentModel({
    required this.temp_c,
    required this.temp_f,
    required this.is_day,
    required this.condition,
    required this.wind_kph,
    required this.wind_dir,
    required this.humidity,
    required this.feelslike_c,
    required this.vis_km,
  });

  factory CurrentModel.fromJson(Map<String, dynamic> json) {
    return CurrentModel(
      temp_c: json["temp_c"].toDouble(),
      temp_f: json["temp_f"].toDouble(),
      is_day: json["is_day"],
      condition: Condition.fromJson(json['condition']),
      humidity: json["humidity"],
      wind_dir: json["wind_dir"],
      wind_kph: json["wind_kph"],
      feelslike_c: json["feelslike_c"],
      vis_km: json["vis_km"],
    );
  }
}
