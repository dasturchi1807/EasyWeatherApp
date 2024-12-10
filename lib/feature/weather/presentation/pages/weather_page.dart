import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/feature/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather/feature/weather/presentation/pages/widgets/loaded.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});


  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {

  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 0.5)
          ),
          child: TextField(
            controller: controller,
            onEditingComplete: () {
              context.read<WeatherBloc>().add(GetWeather(controller.text));
              controller.clear();
            },
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.only(left: 20),
              hintText: "Search for places...",
              border: InputBorder.none,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              tooltip: "My location",
              icon: const Icon(Icons.place))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15,),
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return const Center(
                child: CupertinoActivityIndicator(
                  radius: 20,
                ),
              );
            } else if (state is LoadedState) {
              return loadedData(context, state);
            } else if (state is ErrorState) {
              return const Center(
                child: Text(
                  "Qandaydir xatolik mavjud!",
                  style: const TextStyle(fontSize: 30, color: Colors.red),
                ),
              );
            }
            return const Center(
              child: Text("No data")
            );
          },
        ),
      ),
    );
  }
}
