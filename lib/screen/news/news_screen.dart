import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/news/article_model.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {

  // Get 방식
  // https://newsapi.org/v2/everything?q=tesla&from=2025-07-28&sortBy=publishedAt&apiKey=API_KEY
  // 도메인               / path        / query (q : 검색어, from : 날짜, sortBy : 정렬)

  // get vs post
  // get은 인터넷 주소창에 검색해서 호출 가능
  // post는 인터넷 주소창에서 호출 불가능

  bool loading = true;
  int page = 1;
  List<ArticleModel> articles = [];
  int totalResults = 0;
  ScrollController scrollController = ScrollController();

  Future<void> getData() async {
    if (!loading){
      loading = true;
      setState(() {});
    }

    Uri uri = Uri(
      scheme: "https",
      host: "newsapi.org",
      path: "/v2/everything",
      queryParameters: {
        "q": "google",
        "from": "2025-08-01",
        "sortBy": "publishedAt",
        "apiKey": "f4e382a85f8e45a5878357459c397275",
        "pageSize": "30",
        "page": page.toString(),
      },
    );

    var response = await Dio().get(uri.toString());

    totalResults = response.data['totalResults']?? 0;

    List<ArticleModel> tempList =
    (response.data['articles'] as Iterable).map((e) {
      return ArticleModel.fromJson(e);
    },).toList();
    articles.addAll(tempList);

    print(articles);

    loading = false;
    setState(() {});

  }

  @override
  void initState() {
    getData();
    scrollController.addListener(() {
      if(scrollController.position.atEdge){
        bool isBottom =
            scrollController.position.pixels  == scrollController.position.maxScrollExtent;
        if(isBottom && totalResults > articles.length && !loading){
          page ++;
          getData();
        }
      }
    },);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('News'),),
    body: ListView.builder(
      controller: scrollController,
      padding: EdgeInsets.all(16),
      itemBuilder: (context, index) {
      var article = articles[index];
      return Padding(
      padding: EdgeInsets.only(bottom: 24),
      child: Container(
        margin: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(width: 100, height: 100, color: Colors.grey,
              child: article.urlToImage.isEmpty ? null : Image.network(article.urlToImage, fit: BoxFit.cover,),),
            const SizedBox(width: 12,),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(article.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                maxLines: 1, overflow: TextOverflow.ellipsis,),
                const SizedBox(height: 4,),
                Text(article.description, style: const TextStyle(fontSize: 17), maxLines: 2, overflow: TextOverflow.ellipsis,),
                const SizedBox(height: 8,),
                Text(article.author, style: TextStyle(color: Colors.grey[700], fontSize: 14),),
                Text(article.publishedAt, style: TextStyle(color: Colors.grey[500], fontSize: 14),),
              ],
            ))
          ],
        ),
      ),
    );
    },
      itemCount: articles.length,
    ),);
  }
}
