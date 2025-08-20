import 'package:flutter/material.dart';

class StackPracticeScreen extends StatelessWidget {
  const StackPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("stack 실습"),),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Container(color: Colors.purple,width: 320,height: 320),
              Container(color: Colors.indigo,width: 280,height: 280),
              Container(color: Colors.blue,width: 240,height: 240),
              Container(color: Colors.green,width: 200,height: 200),
              Container(color: Colors.yellow,width: 160,height: 160),
              Container(color: Colors.orange,width: 120,height: 120),
              Container(color: Colors.red,width: 80,height: 80),

            ],
          ),
        ),
    );
  }
}
