import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Image.asset(
            'assets/images/collector.png',
          ),
          height: 250,
          width: 250,
        ),
      ),
    );
  }
}
