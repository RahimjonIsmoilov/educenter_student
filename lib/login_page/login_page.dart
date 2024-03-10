import 'package:educenter_student/home_page/home_page.dart';
import 'package:educenter_student/login_page/forgot_pas_page.dart';
import 'package:educenter_student/signup_page/signup_page.dart';
import 'package:educenter_student/signup_page/widgets/bottombutton.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 36, bottom: 11),
              child: Image(image: AssetImage("images/logoblack.png")),
            ),
            const Text(
              "Welcome back",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Login to continue",
              style: TextStyle(fontSize: 16, color: Colors.deepPurple),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Labels(labeltext: 'Email Address'),
            ),
            const SizedBox(
              height: 44,
              child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintText: "example@gmail.com",
                    border: OutlineInputBorder(),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 22),
              child: Labels(labeltext: "Password"),
            ),
            const SizedBox(
              height: 44,
              child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    hintText: "12345678",
                    border: OutlineInputBorder(),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 50),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotPassword(),
                        ),
                      );
                    },
                    child: const Text("Forgot Password ?")),
              ),
            ),
            BottomButton(
                name: "LOG IN",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                }),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don’t have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUp(),
                          ),
                        );
                      },
                      child: const Text(
                        "Sign up now",
                        style:
                            TextStyle(fontSize: 14, color: Colors.deepPurple),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
