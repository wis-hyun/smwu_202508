import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  const FutureScreen({super.key});

  @override
  State<FutureScreen> createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('future screen'),),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(onPressed: () async {

          print('시작 전');
          String value = await futureBasic();
          print('시작 후: $value');
          // await Future.delayed(Duration(milliseconds: 1000), () {
          //   print('Delay 끝');
          // },);
          // print('시작 후');
        }, child: Text('delay'))

      ],
    ),
    );
  }

  Future<String> futureBasic() async {
    await Future.delayed(Duration(milliseconds: 1500));
    return 'result';
  }
}
