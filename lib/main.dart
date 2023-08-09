import 'package:flutter/material.dart';
import 'package:flutter_application_test/screens/Details_plants.dart';
import 'package:flutter_application_test/screens/drawer.dart';
import 'package:flutter_application_test/screens/home.dart';
import 'package:flutter_application_test/screens/profile.dart';
import 'package:flutter_application_test/screens/splash_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen()
    );
  }
}    