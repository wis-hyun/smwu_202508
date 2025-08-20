import 'package:flutter/material.dart';


class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text"),),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                Text("Text 1",
                  style: TextStyle(color: Colors.grey, fontSize: 20),),
                Text("Text 1 입니당", style: TextStyle(color: Colors.yellow, fontSize: 24,
                fontWeight: FontWeight.bold)),
                Text("텍스트위젯입니당.. 오늘은 flutter를 배운지 벌써 3일재가 되가는 날입니다!! 잘 할 수 있을지 모르겠네요,,!!!",
                style: TextStyle(color: Colors.black, fontSize: 20),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,)
          ],
        ),
      ),
    );
  }
}
