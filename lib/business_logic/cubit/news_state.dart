part of 'news_cubit.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {}
class NewsErrorCase extends NewsState{}
class NewsLoaded extends NewsState {
  final List<AutoGenerate> articles;
  NewsLoaded(this.articles);
}