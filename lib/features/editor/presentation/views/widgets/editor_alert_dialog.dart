

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:notes_hub/constants.dart';

Widget EditorAlertDialog(BuildContext context){
  return  AlertDialog(
      title:const Icon(Icons.info_outline,
      color: iconColor,
      ) ,
      content: const Text('Save Changes ?',
      textAlign: TextAlign.center,
      style: TextStyle(color: iconColor)),
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
             Navigator.pop(context);
           },
            child: const Text('Discard',
            style: TextStyle(
             color: iconColor,
            ),
            )),
       ), 
        Container(
          color:Colors.green,
          width: 100,
          height: 30,
            child: TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
             child: const Text('Save',
              style: TextStyle(
              color: iconColor,
             ),
             )),
          ),
        ])
      ],
  );
}