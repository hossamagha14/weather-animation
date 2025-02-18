import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/Features/Home/Presentation/View%20model/Weather%20Cubit/weather_cubit_cubit.dart';
import 'package:weather/Features/Home/Presentation/View/Widgets/home_body.dart';
import 'package:weather/Features/Home/Presentation/View/Widgets/loading_screen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(context) {
    return BlocConsumer<WeatherCubit, WeatherState>(
      listener: (context, state) {
        if (state is WeatherFail) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        return state is WeatherSuccess
            ? HomeBody(weatherModel: state.weatherModel)
            : state is WeatherFail
                ? Container()
                : LoadingScreen();
      },
    );
  }
}
