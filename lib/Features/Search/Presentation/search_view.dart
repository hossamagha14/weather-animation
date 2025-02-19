import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/Core/Utils/styles.dart';
import 'package:weather/Features/Home/Data/Model/weather_design_model.dart';

class SearchView extends StatefulWidget {
  final bool isDay;

  const SearchView({super.key, required this.isDay});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final TextEditingController controler = TextEditingController();

  @override
  void dispose() {
    controler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: widget.isDay
          ? weatherDesigns['Sunny']!.backGroundColor
          : weatherDesigns['Clear']!.backGroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: controler,
                validator: (value) {
                  if (value == null ||
                      value.trim().isEmpty ||
                      double.tryParse(value) != null) {
                    return 'You must enter the name of a city';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: 'Enter the name of a city...',
                    hintStyle: Styles.text16),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  context.go('/homeView', extra: controler.text);
                }
              },
              child: Text('Search'))
        ],
      ),
    );
  }
}
