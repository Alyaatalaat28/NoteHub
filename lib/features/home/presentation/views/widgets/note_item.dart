import 'package:flutter/material.dart';

Widget noteItem(String title,Color color){  
  return Dismissible(
    key: Key(title),
    direction: DismissDirection.horizontal,
    background: Container(
      color: Colors.red,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Icon(Icons.delete),
         SizedBox(width: 8,),
        ],
      ),
    ),
    secondaryBackground:Container(
      color: Colors.blue,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Icon(Icons.edit_note_rounded),
         SizedBox(width: 8,),
        ],
      ),
    ), 
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 30.0),
      color:color,
      width: double.infinity,
      height: 100,
      child: Text(title,
      style: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
      ), 
      ),
    ),
    onDismissed: (direction){
      if(direction==DismissDirection.endToStart){
        //delete
      }else if(direction==DismissDirection.startToEnd){
        //edit
      }
    },
  );
}