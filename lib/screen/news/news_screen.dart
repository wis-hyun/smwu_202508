import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('News'),),
    body: ListView.builder(
    padding: EdgeInsets.symmetric(vertical: 24),
    itemBuilder: (context, index) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(width: 100, height: 100, color: Colors.grey,),
          const SizedBox(width: 12,),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('기사제목 $index', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
              maxLines: 1, overflow: TextOverflow.ellipsis,),
              const SizedBox(height: 4,),
              Text('기사내용', style: const TextStyle(fontSize: 14), maxLines: 2, overflow: TextOverflow.ellipsis,),
              const SizedBox(height: 8,),
              Text('언론사 이름', style: TextStyle(color: Colors.grey[700], fontSize: 12),),
              Text('skfWK', style: TextStyle(color: Colors.grey[500], fontSize: 12),),

            ],
          ))
        ],
      ),
    );
    },
    ),);
  }
}
