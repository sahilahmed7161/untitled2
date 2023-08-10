import 'package:flutter/material.dart';
import 'package:untitled2/pages/homepage.dart';
import 'package:untitled2/theme.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('money');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartXP',
      theme: myTheme,
      home: const HomePage(),
    );
  }
}

