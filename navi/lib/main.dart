import 'package:flutter/material.dart';
import 'package:navi/screen1.dart';
import 'package:navi/screen2.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedPreferences;

Future main(List<String> args)async {
  sharedPreferences=await SharedPreferences.getInstance();
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'flutter nav demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,

      ),
      home: screen1(),
    );
  }
}
