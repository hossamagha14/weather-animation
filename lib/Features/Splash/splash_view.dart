import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/Core/Utils/colors.dart';
import 'package:weather/Features/Splash/Widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Color?> animation;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () => context.go('/homeView',extra: 'Cairo'));
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..repeat(reverse: true);
    animation =
        ColorTween(begin: sunnyBackgroundColor, end: nightBackgroundCOlor)
            .animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashViewBody(animation: animation));
  }
}
