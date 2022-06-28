import 'package:compass_app_ygt/screens/home_screen.dart';
import 'package:compass_app_ygt/utilies/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: ColorsYGT.greyShade900,
          centerTitle: true
        )
      ),
      home:const HomeScreen(),
    );
  }
}

