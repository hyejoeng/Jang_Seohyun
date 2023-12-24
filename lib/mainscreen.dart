import 'package:flutter/material.dart';
import 'package:jang_seohyun/context_utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) => SafeArea(child: Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text('관찰 일지', style: textTheme(context).titleMedium,),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),   
      child: Column(
        children: [
          Center(
            child: Text('오늘의 관찰일지를 작성해주세요.', style: textTheme(context).titleSmall?.copyWith(
              color: Colors.grey
            ),),
          )
        ],
      ),
    ),
  ));
}
