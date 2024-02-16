// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cat_project/catDetailsScreen.dart';
import 'package:cat_project/main.dart';
import 'package:cat_project/model/cat.dart';
import 'package:cat_project/widgets/catCard.dart';
import 'package:flutter/material.dart';

class CatHomeScreen extends StatelessWidget {
  const CatHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text("     cats", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold )),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.favorite ,color: Colors.white,))],
      ),
      body:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)
        ,itemCount: cats.length
       , itemBuilder:(context, index) {
         final cat =cats[index];
        return CatCard(cat:  cat );
    
       }
       
       , ),backgroundColor:Color.fromARGB(255, 231, 226, 226),
     
      ); 
  }
}


