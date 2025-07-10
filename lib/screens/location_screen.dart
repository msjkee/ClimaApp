import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../services/weather.dart';

class LocationScreen extends StatefulWidget {
  final dynamic locationWeather;

  const LocationScreen({this.locationWeather, super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherModel weather = WeatherModel();

  int? temperature;
  String? weatherIcon;
  String? cityName;
  String? message;

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    setState(() {
      double tmp = weatherData['main']['temp'] ?? 0;
      temperature = tmp.toInt();
      var condition = weatherData['weather'][0]['id'] ?? 0;
      weatherIcon = weather.getWeatherIcon(condition);
      message = weather.getMessage(temperature!);
      cityName = weatherData['name'] ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.8),
              BlendMode.dstATop,
            ),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  TextButton(
                    onPressed: () {

                    },
                    child: Icon(
                      Icons.near_me,
                      size: 50.0
                    )
                  ),
                  TextButton(
                    onPressed: () {

                    },
                    child: Icon(
                      Icons.location_city,
                      size: 50.0
                    )
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget> [
                    Text(
                      '$temperature°',
                      style: kTempTextStyle
                    ),
                    Text(
                      '$weatherIcon',
                      style: kConditionTextStyle
                    )
                  ],
                )
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  "$message in $cityName!",
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle
                )
              )
            ],
          )
        )
      ),
    );
  }
}
