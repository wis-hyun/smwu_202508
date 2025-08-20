import 'package:flutter/material.dart';

class ColumnRowPractice_screen extends StatelessWidget {
  const ColumnRowPractice_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Column, Row 심화')),
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 첫 번째 줄
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 80, height: 80, color: Colors.blue),
                Container(width: 80, height: 80, color: Colors.red),
                Container(width: 80, height: 80, color: Colors.green),
              ],
            ),
            const SizedBox(height: 50),

            // 두 번째 줄
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 80, height: 80, color: Colors.blue),
                Container(width: 80, height: 80, color: Colors.red),
                Container(width: 80, height: 80, color: Colors.green),
              ],
            ),
            const SizedBox(height: 20),

            // 세 번째 줄 (작은 네모 4개)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(width: 30, height: 30, color: Colors.green, margin: EdgeInsets.all(2)),
                        Container(width: 30, height: 30, color: Colors.orange, margin: EdgeInsets.all(2)),
                      ],
                    ),
                    Row(
                      children: [
                        Container(width: 30, height: 30, color: Colors.orange, margin: EdgeInsets.all(2)),
                        Container(width: 30, height: 30, color: Colors.green, margin: EdgeInsets.all(2)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
