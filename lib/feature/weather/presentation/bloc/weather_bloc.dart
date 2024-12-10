import 'package:bloc/bloc.dart';
import 'package:weather/feature/weather/data/models/weather_model.dart';
import 'package:weather/feature/weather/domain/entities/entity.dart';
import 'package:weather/feature/weather/domain/usecase/usecase.dart';

import '../../data/models/weather_mapper.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final GetWeatherUseCase _useCase;
  WeatherBloc(this._useCase) : super(InitialState()) {
    on<GetWeather>((event, emit) async {
      emit(LoadingState());
      Future.delayed(const Duration(seconds: 2));
      try {
        final WeatherModel data = await _useCase(event.query.isNotEmpty ? event.query : "Tashkent");
        final WeatherEntity entity = WeatherMapper.toEntity(data);
        emit(LoadedState(entity));
      } catch (e, r) {
        emit(ErrorState(e.toString(), r.toString()));
      }
    },);
  }
}