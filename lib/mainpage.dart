import 'package:flutter/material.dart';
import 'package:jang_seohyun/context_utils.dart';
import 'package:jang_seohyun/images_data.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) => PopScope(
        canPop: false,
        child: SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.center,
                      width: screensize(context).width,
                      height: screensize(context).height * 0.15,
                      child: Text(
                        '장서현의 사진첩',
                        style: textTheme(context).bodyMedium,
                        textAlign: TextAlign.center,
                      )),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        width: double.infinity,
                        height: screensize(context).height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                          color: Colors.blueAccent
                        ),
                        child: Center(
                          child: Text(
                            'MainPage',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
