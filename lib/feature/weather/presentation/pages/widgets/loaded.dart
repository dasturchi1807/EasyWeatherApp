import 'package:flutter/material.dart';
import 'package:weather/core/time.dart';
import 'package:weather/feature/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather/feature/weather/presentation/pages/widgets/info_card.dart';

import '../../../../../core/icons.dart';

ListView loadedData(BuildContext context, LoadedState state) {
  final double he = MediaQuery.sizeOf(context).height;
  final double wi = MediaQuery.sizeOf(context).width;
  final orientation = MediaQuery.of(context).orientation;

  return ListView(
    children: [
      Center(
          child: Text(
        state.data.name,
        style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      )),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.location_on_outlined,
            size: 25,
            color: Colors.blue,
          ),
          Text(state.data.country,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ],
      ),
      const SizedBox(height: 10),
      Container(
          height: orientation == Orientation.portrait
              ? (he / 100) * 32
              : (he / 100) * 65,
          width: double.maxFinite,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black
                , width: 0.5)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: (he / 100) * 20,
                    width: (wi / 100) * 40,
                    child:
                        Image.asset(AppIcons().getWeatherIcon(state.data.text)),
                  ),
                  Text(state.data.text,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  Text(
                    "${Time.getNowWeek()}, ${Time.getNowDay()} ${Time.getNowMonth()}",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Temperature:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("${state.data.temp_c.toInt()}°",
                      style: const TextStyle(
                          fontSize: 60, fontWeight: FontWeight.bold)),
                  const Text("Real Feel:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("${state.data.feelslike_c}°",
                      style: const TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold))
                ],
              )
            ],
          )),
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          infoCard("Humidity", state.data.humidity.toString()),
          infoCard("Visibility", state.data.vis_km.toString()),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          infoCard("Wind", state.data.wind_kph.toString()),
          infoCard("Wind direction", state.data.wind_dir.toString()),
        ],
      )
    ],
  );
}
