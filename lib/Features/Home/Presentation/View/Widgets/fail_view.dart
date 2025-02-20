import 'package:flutter/material.dart';
import 'package:weather/Core/Utils/colors.dart';
import 'package:weather/Core/Utils/styles.dart';

class FailView extends StatelessWidget {
  final String errMessage;
  final Color backGroundColor;
  final void Function() function;
  const FailView(
      {super.key, required this.errMessage, required this.backGroundColor, required this.function});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nightBackgroundCOlor,
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: Text(
                errMessage,
                style: Styles.text20,
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton.icon(
              onPressed:function,
              label: Text(
                'Retry',
              ),
              icon: Icon(Icons.refresh),
            )
          ],
        ),
      ),
    );
  }
}
