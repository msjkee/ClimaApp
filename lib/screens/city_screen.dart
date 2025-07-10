import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({super.key});

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('city_background.jpg'),
              fit: BoxFit.cover
          )
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
            child: Column(
              children: <Widget> [

              ],
            )
        )
      ),
    );
  }
}
