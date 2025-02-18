part of 'weather_cubit_cubit.dart';

abstract class WeatherState {}

final class WeatherInitial extends WeatherState {}

final class WeatherLoading extends WeatherState {}

final class WeatherSuccess extends WeatherState {
  final ForcastWeatherModel weatherModel;

  WeatherSuccess({required this.weatherModel});
}

final class WeatherFail extends WeatherState {
  final String errMessage;

  WeatherFail(this.errMessage);
}
