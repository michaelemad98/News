import 'package:flutter/material.dart';
import 'package:news/app_rout.dart';

void main() {
  runApp(BrakingBadApp(appRouter: AppRouter(),));
}

class BrakingBadApp extends StatelessWidget {
  // This widget is the root of your application.
  final AppRouter appRouter;
  const BrakingBadApp({Key? key,required this.appRouter}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute ,
    );
  }
}


