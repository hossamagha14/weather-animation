import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:weather/Core/Utils/assets.dart';
import 'package:weather/Core/Utils/colors.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            const Color.fromARGB(255, 255, 55, 55),
            sunnyBackgroundColor
          ])),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 40,
            child: Image.asset(
              sunImg,
              width: 120,
            ),
          ),
          Positioned(
            left: 95,
            bottom: MediaQuery.of(context).size.height * 0.31,
            child: Image.asset(thndrImg, width: 130),
          ),
          Positioned(
            left: 135,
            bottom: MediaQuery.of(context).size.height * 0.445,
            child: Image.asset(windyImg, width: 120),
          ),
          Positioned(
            left: 180,
            bottom: MediaQuery.of(context).size.height * 0.39,
            child: Image.asset(cloudImg, width: 155),
          ),
        ],
      )
          .animate(onPlay: (controller) => controller.repeat(reverse: true))
          .fadeOut(),
    ));
  }
}
