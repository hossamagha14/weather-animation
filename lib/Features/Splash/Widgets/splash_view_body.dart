import 'package:flutter/material.dart';
import 'package:weather/Core/Widgets/loading_container.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
    required this.animation,
  });

  final Animation<Color?> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) => LoadingContainer(),
    );
  }
}
