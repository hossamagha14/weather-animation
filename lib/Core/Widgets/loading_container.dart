import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:weather/Core/Utils/assets.dart';
import 'package:weather/Core/Utils/colors.dart';
import 'package:weather/Core/Utils/styles.dart';

class LoadingContainer extends StatelessWidget {
  const LoadingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            const Color.fromARGB(255, 78, 0, 126),
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
          ).animate().slideX(
              duration: Duration(milliseconds: 500),
              delay: Duration(milliseconds: 1500),
              begin: -2,
              end: 0,
              curve: Curves.easeIn),
          Positioned(
            left: 95,
            bottom: MediaQuery.of(context).size.height * 0.31,
            child: Image.asset(thndrImg, width: 130),
          ).animate().slideY(
              duration: Duration(milliseconds: 700),
              delay: Duration(milliseconds: 2000),
              begin: 4,
              end: 0),
          Positioned(
            left: 135,
            bottom: MediaQuery.of(context).size.height * 0.445,
            child: Image.asset(windyImg, width: 120),
          )
              .animate()
              .slideY(duration: Duration(milliseconds: 700), begin: -3, end: 0),
          Positioned(
            left: 180,
            bottom: MediaQuery.of(context).size.height * 0.39,
            child: Image.asset(cloudImg, width: 155),
          ).animate().slideX(
              duration: Duration(milliseconds: 700),
              delay: Duration(milliseconds: 500),
              begin: 2,
              end: 0,
              curve: Curves.easeIn),
          Positioned(
            left: 70,
            bottom: MediaQuery.of(context).size.height * 0.25,
            child: Text('Your Weather Application',style: Styles.text20.copyWith(color: Colors.white70),),
          ).animate().fadeIn(delay: Duration(seconds: 3)),
        ],
      ),
    );
  }
}
