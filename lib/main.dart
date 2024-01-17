import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_resume_builder/view/src/main_tabs/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Swift Resume Builder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: 'Lato',
        brightness: Brightness.light,
      ),
      home: const HomeTab(),
    );
  }
}
