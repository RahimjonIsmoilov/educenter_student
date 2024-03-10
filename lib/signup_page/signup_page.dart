import 'package:educenter_student/login_page/login_page.dart';
import 'package:educenter_student/signup_page/widgets/bottombutton.dart';
import 'package:educenter_student/verify_page/verify_email.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Image(image: AssetImage('images/logoblack.png')),
            ),
            const Text(
              'Create An Accaunt',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Labels(
                labeltext: "Name",
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: SizedBox(
                height: 44,
                child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintText: "Name",
                      border: OutlineInputBorder(),
                    )),
              ),
            ),
            const Labels(
              labeltext: "Email Address",
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: SizedBox(
                height: 44,
                child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.email_outlined, color: Colors.deepPurple),
                      hintText: "Email Address",
                      border: OutlineInputBorder(),
                    )),
              ),
            ),
            const Labels(
              labeltext: "Password",
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: SizedBox(
                height: 44,
                child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      suffixIconColor: Colors.deepPurple,
                      hintText: "Password",
                      border: OutlineInputBorder(),
                    )),
              ),
            ),
            const Labels(
              labeltext: "Confirm Password",
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: SizedBox(
                height: 44,
                child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      suffixIconColor: Colors.deepPurple,
                      hintText: "Confirm Password",
                      border: OutlineInputBorder(),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: BottomButton(
                name: "SIGN UP",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VerifyEmail(),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Have an account already?',
                    style: TextStyle(fontSize: 14),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    const LoginPage(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              var begin = const Offset(1.0, 0.0);
                              var end = Offset.zero;
                              var curve = Curves.ease;

                              var tween = Tween(begin: begin, end: end)
                                  .chain(CurveTween(curve: curve));

                              return SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                              );
                            },
                          ),
                        );
                      },
                      child: const Text(
                        "Log in",
                        style:
                            TextStyle(color: Colors.deepPurple, fontSize: 14),
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

class Labels extends StatelessWidget {
  const Labels({
    super.key,
    required this.labeltext,
  });
  final String labeltext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          labeltext,
          style: const TextStyle(fontSize: 16, color: Colors.deepPurple),
        ),
      ),
    );
  }
}
