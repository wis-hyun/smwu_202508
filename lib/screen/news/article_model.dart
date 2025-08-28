class ArticleModel {
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  ArticleModel({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      author : json['author'] ?? '',
      title : json['title'] ?? '',
      description : json['description'] ?? '',
      url : json['url'] ?? '',
      urlToImage : json['urlToImage'] ?? '',
      publishedAt : json['publishedAt'] ?? '',
      content : json['content'] ?? '',
    );
  }

  @override
  String toString() {
    return 'ArticleModel{ author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content}';
  }
}


