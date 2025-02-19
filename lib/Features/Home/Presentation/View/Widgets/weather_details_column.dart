import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:weather/Features/Home/Data/Model/forcast_weather_model/forcast_weather_model.dart';
import 'package:weather/Features/Home/Data/Model/weather_design_model.dart';
import 'package:weather/Features/Home/Presentation/View/Widgets/location_weather_column.dart';
import 'package:weather/Features/Home/Presentation/View/Widgets/weather_specifics.dart';

class WeatherDetailsColumn extends StatelessWidget {
  final ForcastWeatherModel weatherModel;
  const WeatherDetailsColumn({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 25,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          LocationWeatherColumn(weatherModel: weatherModel),
          Image.asset(
            weatherModel.current!.isDay == 1
                ? weatherDesigns[weatherModel.current!.condition!.text]!.image
                : weatherModel.current!.isDay == 0 &&
                        weatherModel.current!.condition!.text == 'Partly cloudy'
                    ? 'Assets/partly cloudy night.png'
                    : weatherDesigns['Clear']!.image,
            width: MediaQuery.of(context).size.width * 0.5,
          ).animate().shake(duration: Duration(seconds: 1)).slideX().slideY(),
          WeatherSpecificsRow(
            valueFeelsLike: weatherModel.current!.feelslikeC!,
            isDay: weatherModel.current!.isDay == 1 ? true : false,
            valueWindSpeed: weatherModel.current!.windKph!,
            valueHumidity: weatherModel.current!.humidity!,
          ),
          SizedBox()
        ],
      ),
    );
  }
}
