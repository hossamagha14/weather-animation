import 'package:go_router/go_router.dart';
import 'package:weather/Features/Home/Presentation/View/home_view.dart';
import 'package:weather/Features/Splash/splash_view.dart';

final routes = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => SplashView(),
  ),
  GoRoute(
    path: '/homeView',
    builder: (context, state) => HomeView(),
  )
]);
