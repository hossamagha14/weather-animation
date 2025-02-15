import 'package:flutter/material.dart';

enum WeatherCondition { sunny, windy, cloudy, rainy, thunder, night }

class WeatherDesignModel {
  final Color color;
  final Color backGroundColor;
  final String image;
  final String weatherCondition;
  WeatherDesignModel({
    required this.color,
    required this.image,
    required this.weatherCondition,
    required this.backGroundColor,
  });
}

Map<WeatherCondition, WeatherDesignModel> weatherDesigns = {
  WeatherCondition.night: WeatherDesignModel(
    color: Color(0xFF496F7A),
    image: 'Assets/moon.png',
    weatherCondition: 'Clear',
    backGroundColor: Color(0xFF222359),
  ),
  WeatherCondition.rainy: WeatherDesignModel(
      color: Color(0xFFBBD3DD),
      image: 'Assets/raining.png',
      weatherCondition: 'Rainy',
      backGroundColor: Color(0xFF3D7FE2)),
  WeatherCondition.cloudy: WeatherDesignModel(
      color: Color(0xFFA0DDFC),
      image: 'Assets/cloudy.png',
      weatherCondition: 'Cloudy',
      backGroundColor: Color(0xFF61C7FC)),
  WeatherCondition.sunny: WeatherDesignModel(
      color: Color(0xFFFFD833),
      image: 'Assets/sunny.png',
      weatherCondition: 'Sunny',
      backGroundColor: Color(0xFF48BFFF)),
  WeatherCondition.thunder: WeatherDesignModel(
    color: Color(0xFF496F7A),
    image: 'Assets/Thunder.png',
    weatherCondition: 'Stormy',
    backGroundColor: Color(0xFF7345B5),
  ),
  WeatherCondition.windy: WeatherDesignModel(
      color: Color(0xFFB3CED7),
      image: 'Assets/windy.png',
      weatherCondition: 'Windy',
      backGroundColor: Color(0xFF30CDF8)),
};
