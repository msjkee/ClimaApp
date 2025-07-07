import 'package:flutter/material.dart';
import '../services/location.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getLocation();
    getData();
  }

  void getLocation() async {
    Location location = Location();

    await location.getCurrentLocation();
    print('Latitude: ${location.latitude}, \n Longitude: ${location.longitude}');
  }

  void getData() async {
    http.Response response = await http.get(Uri.parse('https://bulk.openweathermap.org/sample/'));

    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
