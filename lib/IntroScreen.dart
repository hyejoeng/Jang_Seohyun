import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jang_seohyun/context_utils.dart';

import 'example/scrollingscreen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  bool _opacityLevel = true;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      setState(() {
        _opacityLevel = !_opacityLevel;
      });
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                  top: screensize(context).height * 0.3,
                  child: Text(
                    '장서현의 일기',
                    style: textTheme(context).titleLarge,
                  )),
              Positioned(
                  width: screensize(context).width * 0.9,
                  left: screensize(context).width * 0.09,
                  child: AnimatedOpacity(
                      opacity: _opacityLevel  ? 0.0 : 1.0,
                      duration: Duration(seconds: 2),
                      child: Image.asset('asset/images/logo-light.png'))),
              Positioned(
                bottom: screensize(context).height * 0.25,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2, color: HexColor('#FC6C54')),
                      foregroundColor: HexColor('#FC6C54')),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScrollingScreen(),
                      )),
                  child: Text(
                    '시작하기',
                    style: textTheme(context).bodyMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
