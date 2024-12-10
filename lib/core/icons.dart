
class AppIcons {
  static const String cloudy = "assets/icons/cloudy.png";
  static const String mist = "assets/icons/mist.png";
  static const String partly_cloudy = "assets/icons/partly_cloudy.png";
  static const String rain = "assets/icons/rain.png";
  static const String snow = "assets/icons/snow.png";
  static const String sunny = "assets/icons/sunny.png";
  static const String thunderstorm = "assets/icons/thunderstorm.png";
  static const String unknown = "assets/icons/unknown.png";
  static const String overcast = "assets/icons/Overcast.png";
  static const String drizzle = "assets/icons/Drizzle.png";
  static const String haze = "assets/icons/Haze.png";
  static const String fog = "assets/icons/Fog.png";
  static const String freezing_rain = "assets/icons/Freezing_rain.png";
  static const String light_snow = "assets/icons/Light_snow.png";
  static const String heavy_rain = "assets/icons/Heavy_rain.png";
  static const String sleet = "assets/icons/Sleet.png";

  String getWeatherIcon(String text) {
    print(text);
    final Map<String, String> weatherIcons = {
      "Clear": sunny,
      "Sunny": sunny,
      "Cloudy": cloudy,
      "Partly Cloudy": partly_cloudy,
      "Rain": rain,
      "Snow": snow,
      "Thunderstorm": thunderstorm,
      "Mist": mist,
      "Overcast": overcast,
      "Drizzle": drizzle,
      "Haze": haze,
      "Freezing fog" : fog,
      "Light rain": rain,
      "Fog": fog,
      "Freezing rain": freezing_rain,
      "Light snow": light_snow,
      "Heavy rain": heavy_rain,
      "Sleet": sleet
    };
    return weatherIcons[text] ?? unknown;
  }
}