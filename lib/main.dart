import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/feature/weather/data/datasource/datasource.dart';
import 'package:weather/feature/weather/domain/usecase/usecase.dart';

import 'feature/weather/data/repositories/repository_impl.dart';
import 'feature/weather/presentation/bloc/weather_bloc.dart';
import 'feature/weather/presentation/pages/weather_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String apiKey = "Your API Key";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => WeatherBloc(GetWeatherUseCase(WeatherRepositoryImpl(WeatherDataSource(
        Dio(), apiKey)))),
    child: MaterialApp(
      theme: ThemeData(
        fontFamily: "Montoserrat"
      ),
      debugShowCheckedModeBanner: false,
      home: const WeatherPage(),
    ),);
  }
}
