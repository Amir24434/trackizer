import 'package:flutter/material.dart';
import 'package:trackizer/screens/register1.dart';
import 'package:trackizer/screens/register2.dart';
import 'package:trackizer/screens/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
        brightness: Brightness.dark,
        backgroundColor: const Color.fromARGB(255, 51, 51, 67),
      ),
      home: const MyHomePage(),
      //home: const WelcomePage(),
    );
  }
}
