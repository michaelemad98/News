
import 'package:news/data/model/articles.dart';
import 'package:news/data/webService/newsWebService.dart';

class NewsRepostory{
 final NewsWebServices newsWebServices;

  NewsRepostory(this.newsWebServices);
 Future<List<AutoGenerate>>getAllNews()async{
  final articles = await newsWebServices.getAllNews();
  return articles.map((article) => AutoGenerate.fromJson(article)).toList();
 }
}