import 'package:flutter/material.dart';
import 'package:jang_seohyun/context_utils.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) => PopScope(
        canPop: false,
        child: SafeArea(
          child: Scaffold(
            body: SizedBox(
                width: double.infinity,
                height: screensize(context).height * 0.8,
                child: Container(color: Colors.amberAccent,)),
            bottomNavigationBar: SizedBox(
              width: double.infinity,
              height: screensize(context).height * 0.2,
              child: Container(
                color: Colors.deepOrange,
              ),
            )
          ),
        ),
      );
}
