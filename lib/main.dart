import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smwu_202508/screen/button_screen.dart';
import 'package:smwu_202508/method.dart';
import 'package:smwu_202508/collections.dart';
import 'package:smwu_202508/conditional.dart';
import 'package:smwu_202508/screen/getx/my_controller.dart';

void main() {

  // get 패키지에 mycontroller를 넣음.
  // permanent 속성을 사용해서 계속 살아있도록 설정함.
  Get.put(MyController(), permanent: true);

  runApp(const MyApp());
  Method();
  // Collections collection = Collections();
  // collection.listAdd();
  // collection.listRemove();
  // collection.mapController();
  // collection.setController();
  // collection.practice();
  //
  // var conditional = Conditional();
  // conditional.simpleSwitch();
  // var ifScore = conditional.practiceIf(88);
  // var switchScore = conditional.practiceSwitch(99);
  // print('main ifScore = $ifScore,switchScore = $switchScore');
  // conditional.practiceIf(60);
  //
  // collection.practice2(90);
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



