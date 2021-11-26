import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/constant/constString.dart';
import 'package:news/data/model/articles.dart';
class NewsWebServices{
  late Dio dio;
  NewsWebServices(){
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout:20*1000, // 60 seconds
      receiveTimeout:20 *1000, // 60 seconds
    );
    dio = Dio(options);
  }
  Future<List<dynamic>>getAllNews()async{
    try{
      Response response = await dio.get('top-headlines?country=eg&apiKey=8fac4ed264434a8fb9478f63c5edaabd');
      print(response.data.toString());
      return response.data;
    }catch(e){
      print(e.toString());
      return[];
    }

  }
}