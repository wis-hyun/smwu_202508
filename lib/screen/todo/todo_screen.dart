import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('todo list'),),
    body: Column(children: [
      Row(
        children: [
          //expanded - 현재 주어진 영역의 빈 공간을 최대한 채우는 위젯
          Expanded(child: TextFormField()),
          TextButton(onPressed: (){

          }, child: Text('등록')),
        ],
      ),
      
      //column 안에 스크롤이 있는 위젯이 있는 경우에, 높이 값을 설정해야됨.
      Expanded(
        child: ListView.separated(
            itemBuilder: (context, index){
              return Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Expanded(child: Text('내용')),
                  IconButton(onPressed: () {
        
                  }, icon: Icon(Icons.delete))
                ],
              );
        }, separatorBuilder: (context, index){
          return Container(height: 2, color: Colors.grey);
        }, itemCount: 5),
      ),
    ],),);

  }
}
