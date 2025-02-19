import 'package:flutter/material.dart';

class WeatherDesignModel {
  final Color backGroundColor;
  final String image;
  WeatherDesignModel({
    required this.image,
    required this.backGroundColor,
  });
}

Map<String, WeatherDesignModel> weatherDesigns = {
  'Clear': WeatherDesignModel(
    image: 'Assets/moon.png',
    backGroundColor: Color(0xFF222359),
  ),
  'Rainy': WeatherDesignModel(
      image: 'Assets/raining.png', backGroundColor: Color(0xFF3D7FE2)),
  'Light rain': WeatherDesignModel(
      image: 'Assets/raining.png', backGroundColor: Color(0xFF3D7FE2)),
  'Partly cloudy': WeatherDesignModel(
      image: 'Assets/cloudy.png',
      backGroundColor: Color.fromARGB(255, 99, 155, 185)),
  'Cloudy': WeatherDesignModel(
      image: 'Assets/cloudy2.png',
      backGroundColor: Color.fromARGB(255, 99, 155, 185)),
  'Sunny': WeatherDesignModel(
      image: 'Assets/sunny.png', backGroundColor: Color(0xFF48BFFF)),
  'Thunder': WeatherDesignModel(
    image: 'Assets/Thunder.png',
    backGroundColor: Color(0xFF7345B5),
  ),
  'Windy': WeatherDesignModel(
      image: 'Assets/windy.png',
      backGroundColor: Color.fromARGB(255, 99, 155, 185)),
};
