
class WeatherEntity {
  final String name;
  final String country;
  final double temp_c;
  final String text;
  final String icon;
  final int is_day;
  final int humidity;
  final double wind_kph;
  final String wind_dir;
  final double feelslike_c;
  final double vis_km;

  WeatherEntity({
    required this.icon,
    required this.text,
    required this.temp_c,
    required this.name,
    required this.country,
    required this.is_day,
    required this.humidity,
    required this.wind_dir,
    required this.wind_kph,
    required this.feelslike_c,
    required this.vis_km,
  });
}
