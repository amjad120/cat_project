import 'package:cat_project/catDetailsScreen.dart';
import 'package:cat_project/model/cat.dart';
import 'package:flutter/material.dart';

class CatCard extends StatelessWidget {
  
  final Cat cat;
  const CatCard({
    super.key, required  this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap:() {
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CatDetailsScreen(cat: cat);
        }
        )
        );
     
      },
      child: Card( 
        child: Column(
        children: [ Expanded(child: 
          Image.network(cat.imageLink,width:double.infinity,fit: BoxFit.cover)
          ),
         
          Text(cat.name,style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,
               fontWeight: FontWeight.w500,color: Colors.indigo),
               )
      
        ],
      )
       
      
      ),
    );
  }
}