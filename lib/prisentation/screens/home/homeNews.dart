import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/business_logic/cubit/news_cubit.dart';
import 'package:news/constant/colors.dart';
import 'package:news/data/model/articles.dart';
import 'package:news/data/model/modelNews.dart';
import 'package:news/prisentation/widgits/cards/newsCards.dart';
import 'package:news/prisentation/widgits/searchEditText.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    List<AutoGenerate>?allArticles;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allArticles = BlocProvider.of<NewsCubit>(context).getAllNews();
  }

  Widget buildBlocWidget() {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        if (state is NewsLoaded) {
          allArticles = (state).articles;
          return buildLoadedListWidget();
        } else {
          return showLoadingIndicator();
        }
      },
    );
  }

  Widget buildLoadedListWidget() {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'اهلا بك,',
                    style: TextStyle(fontSize: 20, color: primaryColor),
                  ),
                  Text(
                    'تطبيق أخبار',
                    style: TextStyle(fontSize: 25, color: scandryColor),
                  ),
                ]),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more,
                      color: primaryColor,
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchWidget(),
            ),
            Text(
              'أخبار عاجلة',
              style: TextStyle(fontSize: 25, color: scandryColor),
            ),
           // buildNewsList(),
            IconButton(onPressed: (){
              print(allArticles);
            }, icon:Icon(Icons.favorite))
          ]),
        ),
      ],
    );
  }

  // Widget buildNewsList() {
  //   return GridView.builder(
  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //         crossAxisCount: 2,
  //         childAspectRatio: 2/3,
  //         crossAxisSpacing: 1,
  //         mainAxisSpacing: 1
  //       ),
  //       shrinkWrap: true,
  //       physics: const ClampingScrollPhysics(),
  //       itemCount: 2,
  //       itemBuilder: (ctx,index){
  //
  //         print(index);
  //         print(allArticles[index].title);
  //         return NewsCardWidget(articles: allArticles[index],);
  //       });
  //
  // }

  Widget showLoadingIndicator() {
    return Center(
      child: CircularProgressIndicator(
        color: primaryColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      body: SafeArea(
        child: buildBlocWidget(),
      ),
    );
  }
}
