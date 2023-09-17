

import 'package:flutter/material.dart';
import 'package:notes_hub/constants.dart';

Widget showAlertDialog(BuildContext context){
  return  AlertDialog(
      title:const Text('NoteHub',style: TextStyle(color: iconColor),) ,
      content: const Text('Add Your Daily Notes !',style: TextStyle(color: iconColor)),
      backgroundColor:kPrimaryColor ,
      actions: [
        TextButton(
          onPressed: (){
            Navigator.pop(context);
          },
           child: const Text('Ok',
           style: TextStyle(
            color: Colors.blue
           ),)),
      ],
  );
}