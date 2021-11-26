import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news/data/model/articles.dart';
import 'package:news/data/model/modelNews.dart';
import 'package:news/data/repository/news_repostory.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  final NewsRepostory newsRepostory;
  List<AutoGenerate>articles=[];
  NewsCubit(this.newsRepostory) : super(NewsInitial());
     List<AutoGenerate> getAllNews(){
       newsRepostory.getAllNews().then((articles) {
       emit(NewsLoaded(articles));
       this.articles=articles;
       });
       return articles;
     }
}
