import 'dart:math';

import 'package:compass_app_ygt/utilies/sizes.dart';
import 'package:compass_app_ygt/utilies/texts.dart';
import 'package:compass_app_ygt/utilies/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';

import '../utilies/text_styles.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double? heading = -0;
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
      backgroundColor: ColorsYGT.black,
      appBar: AppBar(
        title: TextsYGT.homeScreenAppBarTitle,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '${heading!.ceil()}°',
            style: TextStylesYGT.columnHeadingTextStyle,
          ),
          SizedBoxs.height50SizedBox,
          Padding(
            padding: PaddingValues.paddingSize18,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/cadrant.png"),
                Transform.rotate(
                  angle: ((heading ?? 0) * (pi / 180) * -1),
                  child: Image.asset('assets/images/compass.png', scale: 1.1),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
