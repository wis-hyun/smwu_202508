import 'package:flutter/material.dart';

class TextPracticeScreen extends StatelessWidget {
  const TextPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text 실습"),),
      body: Container(
        child: Text(
          "Text1위젯 실습입니다. 색상은 deepOrange입니다",
          style: TextStyle(color: Colors.deepOrange,
            letterSpacing: 2.5,
            fontSize: 25, fontWeight: FontWeight.bold,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ),
    );
  }
}
