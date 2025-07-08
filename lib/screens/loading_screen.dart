import 'package:clima_flutter/screens/location_screen.dart';
import 'package:flutter/material.dart';
import '../services/location.dart';
import '../services/networking.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../utilities/constants.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  final String _apiKey = dotenv.env['OPENWEATHER_API_KEY'] ?? '';

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();

    await location.getCurrentLocation();

    final uri = Uri.https(
      'api.openweathermap.org',
      '/data/2.5/weather',
      {
        'lat': location.latitude.toString(),
        'lon': location.longitude.toString(),
        'appid': _apiKey,
        'units': 'metric',
      },
    );

    var weatherData = await NetworkHelper(url: uri.toString()).getData();

    if (weatherData != null) {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LocationScreen(locationWeather: weatherData)
          )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: spinKit
      )
    );
  }
}
