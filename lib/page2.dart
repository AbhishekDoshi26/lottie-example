import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> with TickerProviderStateMixin {
  late AnimationController _lottieAnimationController;

  @override
  void initState() {
    super.initState();
    _lottieAnimationController = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation using Controller"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/lottie.json',
              controller: _lottieAnimationController,
              height: MediaQuery.of(context).size.height / 2,
              onLoaded: (composition) {
                _lottieAnimationController..duration = composition.duration;
              },
            ),
            TextButton(
              onPressed: () {
                if (_lottieAnimationController.isCompleted) _lottieAnimationController.reset();
                _lottieAnimationController.forward();
              },
              child: Text(
                'Press Here',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _lottieAnimationController.dispose();
    super.dispose();
  }
}
