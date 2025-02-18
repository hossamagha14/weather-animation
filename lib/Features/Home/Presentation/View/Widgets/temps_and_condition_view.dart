import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/Core/Utils/styles.dart';
import 'package:weather/Features/Home/Data/Model/forcast_weather_model/forcast_weather_model.dart';

class TempsAndConditionView extends StatelessWidget {
  final ForcastWeatherModel weatherModel;
  const TempsAndConditionView({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Text(
          '${weatherModel.current!.tempC.toString()}°',
          style: GoogleFonts.sixCaps(fontSize: 130, color: Colors.white),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 72),
            Text(
              weatherModel.current!.condition!.text!,
              style: Styles.text20,
            ),
            Text(
                '${weatherModel.forecast!.forecastday![0].day!.maxtempC!.toString()}° / ${weatherModel.forecast!.forecastday![0].day!.mintempC!.toString()}°',
                style: Styles.text20.copyWith(color: Colors.white70)),
          ],
        ),
      ],
    );
  }
}
