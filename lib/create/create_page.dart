import 'dart:io';

import 'package:flutter/material.dart';
import 'package:instagram_clone2/create/create_model.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final model = CreateModel();
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('새 게시물'),
        actions: [
          IconButton(
            onPressed: () {
              // 이미지 피커 실행

            },
            icon: const Icon(Icons.send),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  hintText: "내용을 입력하세요",
                  fillColor: Colors.white70,
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: ()async{
                _image = await model.getImage();

                //화면 한번 갱신(가져온 사진 아래 if 문 태워서 띄우려면 갱신)
                setState(() {});

              }, child: const Text('이미지 선택'),
              ),
              if(_image != null) Image.file(
                  _image!,
                  width: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
