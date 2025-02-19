import 'package:go_router/go_router.dart';
import 'package:weather/Features/Home/Presentation/View/home_view.dart';
import 'package:weather/Features/Search/Presentation/search_view.dart';
import 'package:weather/Features/Splash/splash_view.dart';

final routes = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => SplashView(),
  ),
  GoRoute(
    path: '/homeView',
    builder: (context, state) {
      final String cityName = state.extra as String;
      return HomeView(
        cityName: cityName,
      );
    },
  ),
  GoRoute(
      path: '/searchView',
      builder: (context, state) {
        final bool isDay = state.extra as bool;
        return SearchView(isDay: isDay);
      })
]);
