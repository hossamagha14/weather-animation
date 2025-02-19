import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/Features/Home/Data/Model/forcast_weather_model/forcast_weather_model.dart';
import 'package:weather/Features/Home/Data/Repos/home_repo.dart';

part 'weather_cubit_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final HomeRepo homeRepo;
  WeatherCubit(this.homeRepo) : super(WeatherInitial());

  Future<void> getWeather(String cityName) async {
    emit(WeatherLoading());
    var result = await homeRepo.getWeather(cityName);
    result.fold((apiError) {
      emit(WeatherFail(apiError.errMessage));
    }, (weatherModel) {
      emit(WeatherSuccess(weatherModel: weatherModel));
    });
  }
}
