import 'package:bloc_example/bloc/weather_bloc_bloc.dart';
import 'package:bloc_example/widgets/blur_gradient.dart';
import 'package:bloc_example/widgets/row_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: BlurGradient(
            colorOne: Colors.teal,
            colorTwo: Colors.teal.shade600,
            colorThree: Colors.blue.shade800,
            colorFour: Colors.pink.shade200,
            colorFive: Colors.pink.shade700,
            widget: BlocBuilder<WeatherBlocBloc, WeatherBlocState>(
              builder: (context, state) {
                if (state is WeatherBlocSuccess) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "📍${state.weather.areaName}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18.0,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Good Morning",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/6.png',
                            height: 300.0,
                            width: 300.0,
                          ),
                        ),
                        Center(
                          child: Text(
                            "${state.weather.temperature!.celsius!.roundToDouble()}"
                            "°C",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "${state.weather.weatherMain}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Center(
                          child: Text(
                            DateFormat('EEEE dd - ')
                                .add_jm()
                                .format(state.weather.date!),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        RowDisplay(
                          imageOne: 'assets/10.png',
                          imageTwo: 'assets/11.png',
                          textOne: "Sunrise",
                          textTwo: "Sunset",
                          subTextOne: DateFormat()
                              .add_jm()
                              .format(state.weather.sunrise!),
                          subTextTwo: DateFormat()
                              .add_jm()
                              .format(state.weather.sunset!),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: Divider(
                            color: Colors.white54,
                            thickness: 0.5,
                          ),
                        ),
                        RowDisplay(
                          imageOne: 'assets/12.png',
                          imageTwo: 'assets/13.png',
                          textOne: "Max Temp",
                          textTwo: "Min Temp",
                          subTextOne:
                              "${state.weather.tempMax!.celsius!.toInt()}" "°C",
                          subTextTwo:
                              "${state.weather.tempMin!.celsius!.toInt()}" "°C",
                        ),
                      ],
                    ),
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
