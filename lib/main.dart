import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: GradientBackground(),
      ),
    );
  }
}

class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 187, 11, 231),
            Color.fromARGB(255, 187, 11, 231),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 40),
              Image.asset(
                'images/Group1.png',
                width: 177,
                height: 109,
              ),
              const SizedBox(height: 20),
              const Text(
                'Learn Graphic and UI/UX designing in Hindi for free with live projects',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 50),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Email Address',
                  hintStyle: const TextStyle(
                    color: Color(0xFF767676),
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 25.0),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    color: Color(0xFF767676),
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 25.0),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFFD8C00),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  ),
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Container(
                alignment: Alignment.centerRight,
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 14,
                    color: const Color(0xFFFD8C00),
                  ),
                ),
              ),
              const SizedBox(height: 35),
              Container(
                alignment: Alignment.center,
                child: RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    TextSpan(
                        text: 'Register Now',
                        style: TextStyle(
                          color: const Color(0xFFFD8C00),
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                          decorationColor: const Color(0xFFFD8C00),
                        ))
                  ]),
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/gmail.png',
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(width: 20),
                  Image.asset(
                    'images/facebook.png',
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(width: 20),
                  Image.asset(
                    'images/twitter.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: [
                    TextSpan(
                      text: 'By signing up, you are agree with our ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    TextSpan(
                        text: 'Terms & Coniditions',
                        style: TextStyle(
                          color: const Color(0xFFFD8C00),
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                          decorationColor: const Color(0xFFFD8C00),
                        ))
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
