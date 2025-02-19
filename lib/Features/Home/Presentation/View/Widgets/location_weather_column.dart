import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:weather/Core/Utils/styles.dart';
import 'package:weather/Features/Home/Data/Model/forcast_weather_model/forcast_weather_model.dart';
import 'package:weather/Features/Home/Presentation/View/Widgets/location_row.dart';
import 'package:weather/Features/Home/Presentation/View/Widgets/temps_and_condition_view.dart';

class LocationWeatherColumn extends StatelessWidget {
  final ForcastWeatherModel weatherModel;
  const LocationWeatherColumn({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LocationRow(weatherModel: weatherModel),
          TempsAndConditionView(weatherModel: weatherModel)
        ],
      )
          .animate()
          .fadeIn(delay: Duration(milliseconds: 1500))
          .flip(delay: Duration(milliseconds: 2000)),
    );
  }
}
