import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/column/column_practice_screen.dart';
import 'package:smwu_202508/screen/column/column_screen.dart';
import 'package:smwu_202508/screen/container/container_practice_screen.dart';
import 'package:smwu_202508/screen/container/container_screen.dart';
import 'package:smwu_202508/screen/image_screen/image_practice_screen.dart';
import 'package:smwu_202508/screen/image_screen/image_screen.dart';
import 'package:smwu_202508/screen/row/column_row_practice+screen.dart';
import 'package:smwu_202508/screen/row/row_practice_screen.dart';
import 'package:smwu_202508/screen/row/row_screen.dart';
import 'package:smwu_202508/screen/scroll_view/scroll_view_screen.dart';
import 'package:smwu_202508/screen/stack_screen/stack_practice_screen.dart';
import 'package:smwu_202508/screen/stack_screen/stack_screen.dart';
import 'package:smwu_202508/screen/text/text_practice_screen.dart';
import 'package:smwu_202508/screen/text/text_screen.dart';

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

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ColumnPracticeScreen();
                    },
                  ),
                );
              },
              child: Text("ColumnPracticeScreen"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RowScreen();
                    },
                  ),
                );
              },
              child: Text("Row"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RowPracticeScreen();
                    },
                  ),
                );
              },
              child: Text("RowPracticeScreen"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ColumnRowPractice_screen();
                    },
                  ),
                );
              },
              child: Text("ColumnRowPractice_screen"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TextScreen();
                    },
                  ),
                );
              },
              child: Text("TextScreen"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TextPracticeScreen();
                    },
                  ),
                );
              },
              child: Text("TextPracticeScreen"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ImageScreen();
                    },
                  ),
                );
              },
              child: Text("ImageScreen"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ImagePracticeScreen();
                    },
                  ),
                );
              },
              child: Text("ImagePracticeScreen"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return StackScreen();
                    },
                  ),
                );
              },
              child: Text("Stack Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return StackPracticeScreen();
                    },
                  ),
                );
              },
              child: Text("Stack Practice Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ScrollViewScreen();
                    },
                  ),
                );
              },
              child: Text("Scroll View Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
