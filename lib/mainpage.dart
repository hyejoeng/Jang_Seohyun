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
              height: double.infinity,
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.center,
                      width: screensize(context).width,
                      height: screensize(context).height * 0.2,
                      child: Text(
                        '장서현의 사진첩',
                        style: textTheme(context).bodyMedium,
                        textAlign: TextAlign.center,
                      )),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                // width: screensize(context).width * 0.2,
                                child: Image.asset('asset/images/jangSeohyun_images1.jpg'),
                              ),
                              Text('10월 31일', style: textTheme(context).titleMedium,)
                            ],
                          )

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            // bottomNavigationBar: SizedBox(
            //   width: double.infinity,
            //   height: screensize(context).height * 0.2,
            //   child: Container(
            //     color: Colors.deepOrange,
            //   ),
            // )
          ),
        ),
      );
}
