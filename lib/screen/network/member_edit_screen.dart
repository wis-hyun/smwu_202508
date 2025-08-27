import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MemberEditScreen extends StatefulWidget {
  const MemberEditScreen({required this.email, this.description, super.key});

  final String email;
  final String? description;


  @override
  State<MemberEditScreen> createState() => _MemberEditScreenState();
}

class _MemberEditScreenState extends State<MemberEditScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  Dio dio = Dio(BaseOptions(baseUrl: 'https://0f5d227aa566.ngrok-free.app'));
  bool loading = false;

  @override
  void initState(){
    super.initState();
    emailController.text = widget.email;

  }
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('회원정보 수정'),
    ),
    body: Column(
      children: [
        TextFormField(controller: emailController,),
        TextFormField(controller: passwordController,
          decoration: const InputDecoration(labelText: '비밀번호를 입력하세요.'),),
        TextFormField(controller: descriptionController,
          decoration: const InputDecoration(labelText: '계정정보를 입력하세요.'),),
        ElevatedButton(onPressed: () async {
          dio.patch('/api/v1/member/update', data: {
            'email': emailController.text,
            'password': passwordController.text,
            'description':descriptionController.text,
          });
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('수정성공')));
          await Future.delayed(Duration(milliseconds: 800));
          Navigator.pop(context);
        }, child: Text('업데이트')),

        ElevatedButton(onPressed: () async {
          dio.delete('/api/v1/member/delete', data: {
            'email':emailController.text,
            'password': passwordController.text,
          });

          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('삭제성공')));
          await Future.delayed(Duration(milliseconds: 800));
          Navigator.pop(context);
        }, child: Text('삭제'))
      ],
    ),
    );
  }
}
