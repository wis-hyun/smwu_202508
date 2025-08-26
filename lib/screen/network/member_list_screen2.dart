import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Member {
  String email;
  String description;

  Member(this.email, this.description);

  factory Member.fromJson(Map<String, dynamic> json){
    return Member(
      json['email'] ?? '',
      json['description'] ?? '',
    );
  }

  @override
  String toString() {
    return 'Member{email: $email, description: $description}';
  }


}

class MemberListScreen2 extends StatefulWidget {
  const MemberListScreen2({super.key});

  @override
  State<MemberListScreen2> createState() => _MemberListScreen2State();
}

class _MemberListScreen2State extends State<MemberListScreen2> {
  Dio dio = Dio(BaseOptions(baseUrl: 'https://d0a701c36a9e.ngrok-free.app'));
  List<Member> members = [ ];

  @override
  void initState() {
    super.initState();
    fetchMembers();
  }

    Future<void> fetchMembers() async {
    final response = await dio.get('/api/v1/member/all');
    final data = response.data as List;
    setState(() {
      members = data.map((e) => Member.fromJson(e)).toList();
      fetchMembers();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('member list')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: members.length,
              itemBuilder: (context, index) {
                final member = members[index];
                return ListTile(
                  title: Text("메일 : ${member.email}"),
                  subtitle: Text("설명 : ${member.description}"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
