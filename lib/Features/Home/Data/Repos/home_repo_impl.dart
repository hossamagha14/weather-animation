import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weather/Core/Api/api_services.dart';
import 'package:weather/Core/Error/error.dart';
import 'package:weather/Features/Home/Data/Model/forcast_weather_model/forcast_weather_model.dart';
import 'package:weather/Features/Home/Data/Repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices _apiServices;

  HomeRepoImpl(this._apiServices);

  @override
  Future<Either<Error, ForcastWeatherModel>> getWeather(String cityName) async {
    try {
      final data = await _apiServices.get(cityName);
      final forcastWeatherModel = ForcastWeatherModel.fromJson(data);
      return right(forcastWeatherModel);
    } on Exception catch (e) {
      if (e is DioException) {
        final apiError = ApiError.fromDioError(e);
        return left(apiError);
      } else {
        return left(ApiError(e.toString()));
      }
    }
  }
}
