import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/Core/Utils/colors.dart';
import 'package:weather/Core/Utils/styles.dart';
import 'package:weather/Features/Home/Data/Model/weather_design_model.dart';
import 'package:weather/Features/Home/Presentation/View%20model/Weather%20Cubit/weather_cubit_cubit.dart';

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
    return BlocConsumer<WeatherCubit, WeatherState>(
      listener: (context, state) {
        if (state is WeatherSuccess) {
          context.go('/homeView', extra: controler.text);
        } else if (state is WeatherFail) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.errMessage),
            backgroundColor: Colors.red,
          ));
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: nightBackgroundCOlor,
          body: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    controller: controler,
                    style: Styles.text16,
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
              state is WeatherLoading
                  ? CircularProgressIndicator(color: Colors.white)
                  : ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          BlocProvider.of<WeatherCubit>(context)
                              .getWeather(controler.text);
                        }
                      },
                      child: Text('Search'))
            ],
          ),
        );
      },
    );
  }
}
