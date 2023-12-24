import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 이미지를 담을 변수 선언
  // XFile -> pickImage 메서드가 return하는 자료형
  XFile? _image;

  // ImagePicker 초기화
  final ImagePicker picker = ImagePicker();

  // 카메라로 찍은 사진을 불러오고 싶다
  // getImage(ImageSource.camera)

  // 갤러리에 있는 사진을 가져오고 싶다
  // getImage(ImageSource.gallery)

  // 이미지를 가져오는 함수
  Future getImage(ImageSource imageSource) async {
    // pickedFile에 ImagePicker로 가져온 이미지를 담아줌
    final XFile? pickedFile = await picker.pickImage(source: imageSource);

    // 만약에 pickedFile의 값이 비어있지 않다면
    if (pickedFile != null) {
      setState(() {
        // 가져온 이미지를 _image애 저장
        _image = XFile(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('카메라 테스트'),
    ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 30, width: double.infinity),
        _buildPhotoArea(),
        const SizedBox(height: 20,),
        _buildButton()
      ],
    ),
  );

  // 삼항 연산자를 이용해 가져온 이미지가 없다면 회색 정사각형으로 나오도록 구현
  // Image.file 에는 File 타입을 넘겨줘야하므로 XFile 타입인 _Image의 path를 file에 넘겨줘서 file 형식으로 변경
  Widget _buildPhotoArea() => _image != null
      ? SizedBox(
    width: 300,
    height: 300,
    child: Image.file(File(_image!.path)),
  )
      : Container(
    width: 300,
    height: 300,
    color: Colors.grey,
  );

  Widget _buildButton() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextButton(onPressed: () => getImage(ImageSource.camera), child: const Text('카메라')),
      const SizedBox(width: 30,),
      TextButton(onPressed: () => getImage(ImageSource.gallery), child: const Text('갤러리'))
    ],
  );
}