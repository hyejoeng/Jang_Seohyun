import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(child: Image.asset('asset/images/logo-light.png')),
              Positioned(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: const Text('시작하기'))
            ],
          ),
        ),
      );
}
