import 'package:flutter/material.dart';

class ImagePracticeScreen extends StatelessWidget {
  const ImagePracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("image 실습")),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("URL"),
              // 네트워크 이미지
              Container(
                width: 200,
                height: 200,
                child: Image.network(
                  "https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_responsibility.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 30),

              // 에셋 이미지
              Text("Assets"),
              Container(
                width: 200,
                height: 200,
                child: Image.asset(
                  'assets/2.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
