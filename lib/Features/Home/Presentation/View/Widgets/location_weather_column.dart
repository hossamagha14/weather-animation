import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:weather/Core/Utils/styles.dart';
import 'package:weather/Features/Home/Data/Model/forcast_weather_model/forcast_weather_model.dart';
import 'package:weather/Features/Home/Presentation/View/Widgets/temps_and_condition_view.dart';

class LocationWeatherColumn extends StatelessWidget {
  final ForcastWeatherModel weatherModel;
  const LocationWeatherColumn({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top:20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 10,
            children: [
              Text(
                '${weatherModel.location!.country!}, ${weatherModel.location!.region!}',
                style: Styles.text20,
              ),
              Icon(
                Icons.location_on,
                color: Colors.white,
              ),
            ],
          ),
          TempsAndConditionView(weatherModel: weatherModel)
        ],
      )
          .animate()
          .fadeIn(delay: Duration(milliseconds: 1500))
          .flip(delay: Duration(milliseconds: 2000)),
    );
  }
}
