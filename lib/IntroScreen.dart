import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jang_seohyun/context_utils.dart';

import 'mainpage.dart';

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
              Positioned(
                  width: MediaQuery.of(context).size.width * 0.9,
                  left: MediaQuery.of(context).size.width * 0.1,
                  child: Image.asset('asset/images/logo-light.png')),
              Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.25,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2, color: HexColor('#FC6C54')),
                      foregroundColor: HexColor('#FC6C54')
                    ),
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage(),)),
                    child: Text('시작하기', style: textTheme(context).bodyMedium,),
                  ),
              ),
            ],
          ),
        ),
      );
}
