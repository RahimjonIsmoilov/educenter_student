import 'package:educenter_student/onboarding_page/onboarding1.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Align(
          alignment: Alignment.center,
          child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OnBoarding1(),
                  ),
                );
              },
              icon: const Image(image: AssetImage("images/logo.png")))),
    );
  }
}
