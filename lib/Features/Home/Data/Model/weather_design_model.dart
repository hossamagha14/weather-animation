import 'package:flutter/material.dart';

class WeatherDesignModel {
  final Color backGroundColor;
  final String image;
  final String weatherCondition;
  WeatherDesignModel({
    required this.image,
    required this.weatherCondition,
    required this.backGroundColor,
  });
}

Map<String, WeatherDesignModel> weatherDesigns = {
  'Night': WeatherDesignModel(
    image: 'Assets/moon.png',
    weatherCondition: 'Clear',
    backGroundColor: Color(0xFF222359),
  ),
  'Rainy': WeatherDesignModel(
      image: 'Assets/raining.png',
      weatherCondition: 'Rainy',
      backGroundColor: Color(0xFF3D7FE2)),
  'Light rain': WeatherDesignModel(
      image: 'Assets/raining.png',
      weatherCondition: 'Rainy',
      backGroundColor: Color(0xFF3D7FE2)),
  'Partly cloudy': WeatherDesignModel(
      image: 'Assets/cloudy.png',
      weatherCondition: 'Cloudy',
      backGroundColor: Color.fromARGB(255, 99, 155, 185)),
  'Cloudy': WeatherDesignModel(
      image: 'Assets/cloudy2.png',
      weatherCondition: 'Cloudy',
      backGroundColor: Color.fromARGB(255, 99, 155, 185)),
  'Sunny': WeatherDesignModel(
      image: 'Assets/sunny.png',
      weatherCondition: 'Sunny',
      backGroundColor: Color(0xFF48BFFF)),
  'Thunder': WeatherDesignModel(
    image: 'Assets/Thunder.png',
    weatherCondition: 'Stormy',
    backGroundColor: Color(0xFF7345B5),
  ),
  'Windy': WeatherDesignModel(
      image: 'Assets/windy.png',
      weatherCondition: 'Windy',
      backGroundColor: Color.fromARGB(255, 99, 155, 185)),
};
