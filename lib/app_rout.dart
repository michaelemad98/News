import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/data/repository/news_repostory.dart';
import 'package:news/data/webService/newsWebService.dart';
import 'package:news/prisentation/screens/home/homeNews.dart';
import 'business_logic/cubit/news_cubit.dart';

class AppRouter {
  late NewsRepostory newsRepostory;
  late NewsCubit newsCubit;

  AppRouter() {
    newsRepostory = NewsRepostory(NewsWebServices());
    newsCubit = NewsCubit(newsRepostory);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => newsCubit,
          child:Directionality(
            textDirection: TextDirection.rtl,
            child: HomeScreen(),
          ))
        );
    }
  }
}
