

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:notes_hub/constants.dart';

import '../../../../home/presentation/views/home_view.dart';

Widget EditorAlertDialog(context){
  return  AlertDialog(
      title:const Icon(Icons.info_outline,
      color: wColor,
      ) ,
      content: const Text('Save Changes ?',
      textAlign: TextAlign.center,
      style: TextStyle(color: wColor)),
      backgroundColor:kPrimaryColor ,
      actions: [
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
      Container(
         color:Colors.red,
         width: 100,
         height: 30,
         child: TextButton(
           onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeView()));
           },
            child: const Text('Discard',
            style: TextStyle(
             color: wColor,
            ),
            )),
       ), 
        Container(
          color:Colors.green,
          width: 100,
          height: 30,
            child: TextButton(
            onPressed: (){

            },
             child: const Text('Save',
              style: TextStyle(
              color: wColor,
             ),
             )),
          ),
        ])
      ],
  );
}