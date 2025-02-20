import 'package:dartz/dartz.dart';
import 'package:weather/Core/Error/error.dart';
import 'package:weather/Features/Home/Data/Model/forcast_weather_model/forcast_weather_model.dart';

abstract class HomeRepo {
  Future<Either<Error, ForcastWeatherModel>> getWeather(String cityName);
}
