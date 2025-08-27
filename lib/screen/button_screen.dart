import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/column/column_practice_screen.dart';
import 'package:smwu_202508/screen/column/column_screen.dart';
import 'package:smwu_202508/screen/container/container_practice_screen.dart';
import 'package:smwu_202508/screen/container/container_screen.dart';
import 'package:smwu_202508/screen/future/future_screen.dart';
import 'package:smwu_202508/screen/image_screen/image_practice_screen.dart';
import 'package:smwu_202508/screen/image_screen/image_screen.dart';
import 'package:smwu_202508/screen/navigator/navigator_screen.dart';
import 'package:smwu_202508/screen/network/network_screen.dart';
import 'package:smwu_202508/screen/news/news_screen.dart';
import 'package:smwu_202508/screen/row/column_row_practice+screen.dart';
import 'package:smwu_202508/screen/row/row_practice_screen.dart';
import 'package:smwu_202508/screen/row/row_screen.dart';
import 'package:smwu_202508/screen/scroll_view/listview_builder_screen.dart';
import 'package:smwu_202508/screen/scroll_view/listview_practice_screen.dart';
import 'package:smwu_202508/screen/scroll_view/listview_screen.dart';
import 'package:smwu_202508/screen/scroll_view/scroll_view_screen.dart';
import 'package:smwu_202508/screen/stack_screen/stack_practice_screen.dart';
import 'package:smwu_202508/screen/stack_screen/stack_screen.dart';
import 'package:smwu_202508/screen/stateful/stateful_screen.dart';
import 'package:smwu_202508/screen/text/text_practice_screen.dart';
import 'package:smwu_202508/screen/text/text_screen.dart';
import 'package:smwu_202508/screen/todo/todo_screen.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            button(context, ContainerScreen(), "Container"),
            const SizedBox(height: 10),
            button(context, ContainerScreen2(), "button2"),
            const SizedBox(height: 10),
            button(context, ColumnScreen(), "Column"),
            button(context, ColumnPracticeScreen(), "ColumnPracticeScreen"),
            button(context, RowScreen(), "Row"),
            button(context, RowPracticeScreen(), "RowPracticeScreen"),
            button(context, ColumnRowPractice_screen(), "ColumnRowPractice_screen"),
            button(context, TextScreen(), "TextScreen"),
            button(context, TextPracticeScreen(), "TextPracticeScreen"),
            button(context, ImageScreen(), "ImageScreen"),
            button(context, ImagePracticeScreen(), "ImagePracticeScreen"),
            button(context, StackScreen(), "Stack Screen"),
            button(context, StackPracticeScreen(), "Stack Practice Screen"),
            button(context, ScrollViewScreen(), "Scroll View Screen"),
            const SizedBox(height: 10),
            button(context, ListviewScreen(), "ListView"),
            const SizedBox(height: 10),
            button(context, ListviewBuilderScreen(), "ListView Builder"),
            const SizedBox(height: 10),
            button(context, ListviewPracticeScreen(), "ListView 실습"),
            const SizedBox(height: 10),
            button(context, StatefulScreen(), "Stateful"),
            const SizedBox(height: 10),
            button(context, NavigatorScreen(), "Navigator"),
            const SizedBox(height: 10),
            button(context, TodoScreen(), "Todo screen"),
            const SizedBox(height: 10),
            button(context, NetworkScreen(), "Network screen"),
            const SizedBox(height: 10),
            button(context, FutureScreen(), "Future screen"),
            const SizedBox(height: 10),
            button(context, NewsScreen(), "News screen"),
          ],
        ),
      ),
    );
  }
}

Widget button(BuildContext context, Widget child, String name) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return child;
        }),
      );
    },
    child: Text(name),
  );
}
