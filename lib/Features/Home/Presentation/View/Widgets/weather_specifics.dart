import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:weather/Core/Utils/assets.dart';
import 'package:weather/Features/Home/Presentation/View/Widgets/custom_container.dart';

class WeatherSpecificsRow extends StatelessWidget {
  final double valueFeelsLike;
  final double valueWindSpeed;
  final bool isDay;
  final int valueHumidity;
  const WeatherSpecificsRow({
    super.key,
    required this.valueFeelsLike,
    required this.valueWindSpeed,
    required this.valueHumidity,
    required this.isDay,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        children: [
          CustomContainer(
            title: 'Feels like',
            image: thermoImg,
            value: '$valueFeelsLike°C',
            isDay: isDay,
          ),
          SizedBox(width: 10),
          CustomContainer(
            title: 'Wind speed',
            image: windImg,
            value: '$valueWindSpeed km/hr',
            isDay: isDay,
          ),
          SizedBox(width: 10),
          CustomContainer(
            title: 'Humidity',
            image: humidityImg,
            value: '$valueHumidity%',
            isDay: isDay,
          ),
        ],
      ),
    ).animate().fadeIn(delay: Duration(seconds: 1)).flip();
  }
}
