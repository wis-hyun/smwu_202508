import 'package:flutter/material.dart';

class ScrollViewScreen extends StatelessWidget {
  const ScrollViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scroll view"),),
      body: SizedBox(
        width: 200, height: 200,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 50),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Text("가"),
              SizedBox(height: 30, width:30),
              Text("나"),
              SizedBox(height: 30, width:30),
              Text("다"),
              SizedBox(height: 30, width:30),
              Text("라"),
              SizedBox(height: 30, width:30),
              Text("마"),
              SizedBox(height: 30, width:30),
              Text("바"),
              SizedBox(height: 30, width:30),
              Text("사")

            ],
          ),
        ),
      ),
    );
  }
}
