import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie_example/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Infinite Animation"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Page2(),
          ),
        ),
        child: Icon(Icons.arrow_right),
      ),
      body: Center(
        child: Lottie.asset('assets/lottie1.json'),
      ),
    );
  }
}
