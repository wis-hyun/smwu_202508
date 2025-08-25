import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MemberListScreen extends StatefulWidget {
  const MemberListScreen({super.key});

  @override
  State<MemberListScreen> createState() => _MemberListScreenState();
}

class _MemberListScreenState extends State<MemberListScreen> {

  Dio dio = Dio(BaseOptions(baseUrl: 'https://9d8cdaee67f2.ngrok-free.app'));

  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(title: Text('member look'),),
    body: Column(
      children: [
        ElevatedButton(onPressed: (){
          dio.get('/api/v1/member/all');
        }, child: Text('get data')),
      ],
    ),);
  }
}
