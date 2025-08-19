import 'package:flutter/material.dart';

class ColumnPracticeScreen extends StatelessWidget {
  const ColumnPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container 실습')),
      body: Container(
        width: 300,
        color: Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 100, height: 100,
              color: Colors.blue,
            ),

            Container(
              width: 100, height: 100,
              color: Colors.red,
            ),

            Container(
              width: 100, height: 100,
              color: Colors.green,
            ),
          ],
        ),
      )
    );
  }
}
