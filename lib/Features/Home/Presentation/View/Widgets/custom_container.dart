import 'package:flutter/material.dart';
import 'package:weather/Core/Utils/styles.dart';

class CustomContainer extends StatelessWidget {
  final String title;
  final String value;
  final String image;
  const CustomContainer({
    super.key,
    required this.title,
    required this.value,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white24,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: Styles.text16,
          ),
          Image.asset(image,width: 45,),
          Text(
            value,
            style: Styles.text18,
          )
        ],
      ),
    );
  }
}
