import 'package:flutter/material.dart';

class ContainerScreen2 extends StatelessWidget {
  const ContainerScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container 실습')),
      body: Container(
        width: 350,
        height: 350,
        decoration: BoxDecoration(
          color: Colors.orange,
          border: Border.all(width: 5, color: Colors.blue),
          borderRadius: BorderRadius.circular(15),
        ),
        alignment: Alignment.center,
        child: Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          // 안쪽 박스 색
        ),
      ),
    );
  }
}
