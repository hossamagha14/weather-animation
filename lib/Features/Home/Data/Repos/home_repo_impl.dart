import 'package:dartz/dartz.dart';
import 'package:weather/Core/Api/api_services.dart';
import 'package:weather/Core/Error/error.dart';
import 'package:weather/Features/Home/Data/Model/forcast_weather_model/forcast_weather_model.dart';
import 'package:weather/Features/Home/Data/Repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices _apiServices;

  HomeRepoImpl(this._apiServices);

  @override
  Future<Either<ApiError, ForcastWeatherModel>> getWeather() async {
    final data = await _apiServices.get('cairo');
    final forcastWeatherModel = ForcastWeatherModel.fromJson(data);
    return right(forcastWeatherModel);
  }
}
