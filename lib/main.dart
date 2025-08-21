import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/button_screen.dart';
import 'package:smwu_202508/method.dart';
import 'package:smwu_202508/collections.dart';
import 'package:smwu_202508/conditional.dart';

void main() {
  runApp(const MyApp());
  Method();
  Collections collection = Collections();
  collection.listAdd();
  collection.listRemove();
  collection.mapController();
  collection.setController();
  collection.practice();

  var conditional = Conditional();
  conditional.simpleSwitch();
  var ifScore = conditional.practiceIf(88);
  var switchScore = conditional.practiceSwitch(99);
  print('main ifScore = $ifScore,switchScore = $switchScore');
  conditional.practiceIf(60);

  collection.practice2(90);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ButtonScreen(),
    );
  }
}



