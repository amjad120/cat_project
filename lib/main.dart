import 'package:cat_project/catDetailsScreen.dart';
import 'package:cat_project/cat_home_screen.dart';
import 'package:cat_project/data/all_Cats.dart';
import 'package:cat_project/model/cat.dart';
import 'package:flutter/material.dart';

final cats = allCat.map<Cat>((jesocat ) => Cat.fromJson(jesocat)).toList();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      home:CatHomeScreen(),
    );
  }
}
