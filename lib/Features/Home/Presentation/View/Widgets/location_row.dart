import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/Core/Utils/styles.dart';
import 'package:weather/Features/Home/Data/Model/forcast_weather_model/forcast_weather_model.dart';

class LocationRow extends StatelessWidget {
  const LocationRow({
    super.key,
    required this.weatherModel,
  });

  final ForcastWeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push('/searchView',
          extra: weatherModel.current!.isDay == 1 ? true : false),
      child: Row(
        spacing: 10,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            child: Text(
              '${weatherModel.location!.country!}, ${weatherModel.location!.region!}',
              maxLines: 2,
              style: Styles.text20,
              overflow: TextOverflow.clip,
            ),
          ),
          Icon(
            Icons.location_on,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
