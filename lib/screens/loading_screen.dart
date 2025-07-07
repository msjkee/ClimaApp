import 'package:flutter/material.dart';
import '../services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
    http.Response response = await http.get(Uri.parse('https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22'));

    if (response.statusCode == 200) {
      String data = response.body;

      var decodedData = jsonDecode(data);
      
      double temp = decodedData['main']['temp'];
      int id = decodedData['weather'][0]['id'];
      String city = decodedData['name'];

      print('$city \n $id \n $temp');
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
