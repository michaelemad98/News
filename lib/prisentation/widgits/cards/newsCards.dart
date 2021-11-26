import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/constant/colors.dart';
import 'package:news/data/model/articles.dart';

class NewsCardWidget extends StatelessWidget {

  final Articles articles;
  const NewsCardWidget({Key? key,required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
        padding: EdgeInsetsDirectional.all(4),
        decoration: BoxDecoration(
          border: Border.all(color: primaryColor, width: 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child:GridTile(
          child: Container(
            child: articles.urlToImage!.isNotEmpty ?FadeInImage.assetNetwork(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              placeholder: 'assets/images/loading.gif',
              image: '${articles.urlToImage}',
            ):Image.asset('assets/images/noimage.png'),
          ),
          footer: Container(width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10), alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Text(
                  '${articles.author}',
                  style: TextStyle(fontSize: 15, color: blackColor,
                      fontWeight: FontWeight.w400
                  ),
                ),
                Text(
                  '${articles.title}',
                  style: TextStyle(
                      fontSize: 20,
                      color: blackColor,
                      fontWeight: FontWeight.w900
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
