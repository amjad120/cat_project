// ignore_for_file: prefer_const_constructors

import 'package:cat_project/model/cat.dart';
import 'package:cat_project/widgets/catDetailds.dart';
import 'package:flutter/material.dart';

class CatDetailsScreen extends StatelessWidget {
  final Cat cat;
  const CatDetailsScreen({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:Text(cat.name),  backgroundColor: Colors.blue,),
        body: catdetailswidget(cat: cat),backgroundColor:Color.fromARGB(255, 231, 226, 226) ,
        
        );
  }
}
