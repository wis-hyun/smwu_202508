import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/todo/todo_model.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  TextEditingController controller = TextEditingController();
  List<TodoModel> todoList = [TodoModel('산책', true), TodoModel('저녁', false)];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('todo list')),
      body: Column(
        children: [
          Row(
            children: [
              //expanded - 현재 주어진 영역의 빈 공간을 최대한 채우는 위젯
              Expanded(child: TextFormField(controller: controller)),
              TextButton(onPressed: () {
                // todolist에 새로운 todomodel을 추가

                setState(() {
                  todoList.add(TodoModel(controller.text, false));
                });
                print(controller.text);
              }, child: Text('등록')),
            ],
          ),

          //column 안에 스크롤이 있는 위젯이 있는 경우에, 높이 값을 설정해야됨.
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                var model = todoList[index];

                //1. 체크박스를 선택했을때 checked 값을 변경하고, 화면 갱신
                //2. delete button을 클릭해서 클릭한 todoModel 제거
                return Row(
                  children: [
                    Checkbox(
                      value: model.checked,
                      onChanged: (value) {
                        model.checked = value!;
                        setState(() {});
                      },
                    ),
                    Expanded(child: Text(model.name)),
                    IconButton(
                      onPressed: () {
                        print('index:$index');
                        todoList.removeAt(index);
                        setState(() {
                        });
                      },
                      icon: Icon(Icons.delete),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return Container(height: 2, color: Colors.grey);
              },
              itemCount: todoList.length,
            ),
          ),
        ],
      ),
    );
  }
}
