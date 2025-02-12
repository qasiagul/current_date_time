import 'package:complete_ecomerce_app/screens/api.dart';
import 'package:complete_ecomerce_app/screens/bmi_screen.dart';
import 'package:flutter/material.dart';

  void main(){
    runApp(MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});
  
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo
        ),
        home: BMIScreen(),
      );
    }
  }
