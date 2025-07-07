import 'package:flutter/material.dart';
import '../services/location.dart';
import '../services/networking.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  final String _apiKey = dotenv.env['OPENWEATHER_API_KEY'] ?? '';

  double? longitude;
  double? latitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();

    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;

    NetworkHelper networkHelper = NetworkHelper(url: 'https://samples.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$_apiKey');

    var weatherData = await networkHelper.getData();
  }

  void getData() async {
      //double temp = decodedData['main']['temp'];
      //int id = decodedData['weather'][0]['id'];
      //String city = decodedData['name'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
