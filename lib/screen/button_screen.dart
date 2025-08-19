import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/column/column_screen.dart';
import 'package:smwu_202508/screen/container/container_practice_screen.dart';
import 'package:smwu_202508/screen/container/container_screen.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ContainerScreen();
                    },
                  ),
                );
              },
              child: Text("Container"),
            ),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ContainerScreen2();
                    },
                  ),
                );
              },
              child: Text("button2"),
            ),


            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ColumnScreen();
                    },
                  ),
                );
              },
              child: Text("Column"),
            ),


          ],
        ),
      ),
    );
  }
}
