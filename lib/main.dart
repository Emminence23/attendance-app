import 'package:attendance_app/screens/dashboard.dart';
import 'package:attendance_app/screens/capturepic.dart';
import 'package:attendance_app/screens/login_page.dart';
import 'package:attendance_app/screens/home_page.dart';
import 'package:attendance_app/screens/registration.dart';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:get/get.dart';

Future<void> main() async {
  // i have made profilepage and the registrtain page
  // how to capture the image and upload it to the server is remaining
  // also all the api calls are remaining
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  // final List<CameraDescription> cameras;

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const String initialRoute = "/login";
    return GetMaterialApp(
      title: 'Attendance App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        scaffoldBackgroundColor: Colors.indigo[900]?.withOpacity(0.5),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown[400]!),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.brown[400],
        ),
        useMaterial3: true,
      ),
      initialRoute: initialRoute,
      routes: {
        '/login': (context) => const LoginPage(),
        '/history': (context) => const HomePage(),
        '/home': (context) => const Dashboard(),
        '/register': (context) => const RegistrationPage(),
        '/picture': (context) => const CapturePicPage(),
      },
    );
  }
}
