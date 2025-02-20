import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/Core/Api/api_services.dart';
import 'package:weather/Features/Home/Data/Repos/home_repo_impl.dart';
import 'package:weather/Features/Home/Presentation/View%20model/Weather%20Cubit/weather_cubit_cubit.dart';
import 'package:weather/Features/Home/Presentation/View/Widgets/fail_view.dart';
import 'package:weather/Features/Home/Presentation/View/Widgets/home_body.dart';
import 'package:weather/Features/Home/Presentation/View/Widgets/loading_screen.dart';

class HomeView extends StatefulWidget {
  final String cityName;
  const HomeView({super.key, required this.cityName});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<WeatherCubit>(context).getWeather(widget.cityName);
  }

  @override
  Widget build(context) {
    return BlocConsumer<WeatherCubit, WeatherState>(
      listener: (context, state) {
        if (state is WeatherFail) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(state.errMessage), backgroundColor: Colors.red),
          );
        }
      },
      builder: (context, state) {
        return state is WeatherSuccess
            ? HomeBody(weatherModel: state.weatherModel)
            : state is WeatherFail
                ? FailView(
                    errMessage: state.errMessage,
                    function: ()=>BlocProvider.of<WeatherCubit>(context).getWeather(widget.cityName),
                    backGroundColor: Colors.deepPurple,
                  )
                : LoadingScreen();
      },
    );
  }
}
