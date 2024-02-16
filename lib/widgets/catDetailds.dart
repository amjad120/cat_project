import 'package:cat_project/model/cat.dart';
import 'package:flutter/material.dart';

class catdetailswidget extends StatefulWidget {
  final Cat cat;
  const catdetailswidget({super.key, required this.cat});

  @override
  State<catdetailswidget> createState() => _catdetailswidgetState();
}

class _catdetailswidgetState extends State<catdetailswidget> {
  bool is_name_colored = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       
        Image.network(widget.cat.imageLink,
            width: double.infinity, fit: BoxFit.fitWidth),
        Text(widget.cat.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,
            color: is_name_colored ? Colors.indigo :Colors.black
                 
                   ),
                
                 ),
        
        Text("origin: ${widget.cat.origin}", style: TextStyle(fontSize: 25)),
       
        Text("maxweight: ${widget.cat.maxWeight}",
            style: TextStyle(fontSize: 25)),
        
        Text("min weight: ${widget.cat.minWeight}",
            style: TextStyle(fontSize: 25)),
       
        Text("length: ${widget.cat.length}", style: TextStyle(fontSize: 25)),
        ElevatedButton(
            onPressed: () {
              setState(() {
                is_name_colored = !is_name_colored;
              });
            },
            child: Text("change name color"),)
      ],
    );
  }
}
