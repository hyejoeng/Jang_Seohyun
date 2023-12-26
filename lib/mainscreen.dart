import 'package:flutter/material.dart';
import 'package:jang_seohyun/calender_widget.dart';
import 'package:jang_seohyun/context_utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(screensize(context).height * 0.08),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppBar(
                  centerTitle: true,
                  // titleTextStyle: textTheme(context).titleMedium,
                  titleTextStyle: textTheme(context).titleMedium?.copyWith(fontSize: 24),
                  title: const Text('관찰 일지'),
                ),
              ],
            )
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: screensize(context).height * 0.05,
                  child: Text(
                    '오늘의 관찰일지를 작성해주세요.',
                    style: textTheme(context)
                        .titleSmall
                        ?.copyWith(color: Colors.grey, fontSize: 16),
                  ),
                ),
                CalenderWidget(),
              ],
            ),
          ),
        ),
      );
}
