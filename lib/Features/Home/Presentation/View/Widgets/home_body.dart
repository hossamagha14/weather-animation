import 'package:flutter/material.dart';
import 'package:weather/Features/Home/Data/Model/forcast_weather_model/forcast_weather_model.dart';
import 'package:weather/Features/Home/Data/Model/weather_design_model.dart';
import 'package:weather/Features/Home/Presentation/View/Widgets/weather_details_column.dart';

class HomeBody extends StatelessWidget {
  final ForcastWeatherModel weatherModel;
  const HomeBody({
    super.key,
    required this.weatherModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: weatherDesigns[WeatherCondition.night]!.backGroundColor,
      body: SafeArea(
        child: WeatherDetailsColumn(weatherModel: weatherModel),
      ),
    );
  }
}
