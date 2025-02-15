import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/Core/Api/api_services.dart';
import 'package:weather/Features/Home/Data/Repos/home_repo.dart';
import 'package:weather/Features/Home/Data/Repos/home_repo_impl.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepo>(HomeRepoImpl(getIt.get<ApiServices>()));
}
