

import 'package:flutter/material.dart';
import 'package:notes_hub/constants.dart';

Widget showAlertDialog(BuildContext context){
  return  AlertDialog(
      title:const Text('NoteHub') ,
      content: const Text('Add Your Daily Notes !'),
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