import 'package:flutter/material.dart';
import 'package:news/constant/colors.dart';
class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: primaryColor),
      decoration: InputDecoration(
        labelText:'ابحث',
        labelStyle: TextStyle(color:primaryColor),
        prefixIcon: Icon(Icons.search),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(decoration:  BoxDecoration(
            border: Border.all(color: scandryColor, width: 1),
            color: scandryColor,
            borderRadius: BorderRadius.circular(15),
          ),child: IconButton(onPressed: (){}, icon: Icon(Icons.account_tree_rounded, color:whiteColor ,),)),
        ),
        hintText: 'ابحث عن مقالة هنا ...',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide:  BorderSide(
            color:primaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color:primaryColor,
            width: 1.0,
          ),
        ),
      ),

    );
  }
}
