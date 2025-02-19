import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/Core/Utils/routes.dart';
import 'package:weather/Core/Utils/service_locator.dart';

void main() {
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(textTheme: GoogleFonts.fredokaTextTheme()),
      routerConfig: routes,
    );
  }
}
