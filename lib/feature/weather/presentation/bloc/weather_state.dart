part of 'weather_bloc.dart';

abstract class WeatherState {}

class InitialState extends WeatherState {}

class LoadingState extends WeatherState {}

class LoadedState extends WeatherState {
  final WeatherEntity data;

  LoadedState(this.data);
}

class ErrorState extends WeatherState {
  final String message;
  final String subtitle;

  ErrorState(
    this.message,
    this.subtitle,
  );
}
