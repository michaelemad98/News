class AutoGenerate {
  AutoGenerate({
    required this.articles,
  });
   List<Articles> ?articles;

  AutoGenerate.fromJson(Map<String, dynamic> json){
    articles = List.from(json['articles']).map((e)=>Articles.fromJson(e)).toList();
  }
}

class Articles {
  Articles({
    required this.source,
    this.author,
    required this.title,
    this.description,
    required this.url,
    this.urlToImage,
    required this.publishedAt,
    this.content,
  });
   Source?source;
   String? author;
   String? title;
   String? description;
   String ?url;
   String? urlToImage;
   String? publishedAt;
   String? content;

  Articles.fromJson(Map<String, dynamic> json){
    source = Source.fromJson(json['source']);
    author = null;
    title = json['title'];
    description = null;
    url = json['url'];
    urlToImage = null;
    publishedAt = json['publishedAt'];
    content = null;
  }
}

class Source {
  Source({
    this.id,
    required this.name,
  });
   String? id;
   String? name;

  Source.fromJson(Map<String, dynamic> json){
    id = null;
    name = json['name'];
  }

}