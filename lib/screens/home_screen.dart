import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double? heading;
  @override
  void initState() {
    super.initState();
    FlutterCompass.events!.listen((event) {
      heading = event.heading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: ,
        // body: ,
        );
  }
}
