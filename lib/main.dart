import 'package:flutter/material.dart';
import 'package:lottie_example/page1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lottie Example',
      debugShowCheckedModeBanner: false,
      home: Page1(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
    );
  }
}
