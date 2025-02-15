import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/Core/Api/api_services.dart';
import 'package:weather/Core/Utils/routes.dart';
import 'package:weather/Core/Utils/service_locator.dart';
import 'package:weather/Features/Home/Data/Repos/home_repo_impl.dart';
import 'package:weather/Features/Home/Presentation/View%20model/Weather%20Cubit/weather_cubit_cubit.dart';

void main() {
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              WeatherCubit(HomeRepoImpl(ApiServices(Dio())))..getWeather(),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(textTheme: GoogleFonts.fredokaTextTheme()),
        routerConfig: routes,
      ),
    );
  }
}
