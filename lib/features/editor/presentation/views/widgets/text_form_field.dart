// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class NoteTextFormFields extends StatelessWidget {
   NoteTextFormFields({super.key});
  TextEditingController titleController=TextEditingController();
  TextEditingController texteController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:40 ),
      child: Column(
        children: [
          TextFormField(
            controller: titleController,
            cursorColor:wColor ,
            keyboardType: TextInputType.text,
            decoration:  InputDecoration(
              hintText: 'Title',
              hintStyle: TextStyle(
                fontSize: 48,
                color:hintText.withOpacity(0.5) ,
              ),
              border:InputBorder.none ,
            ),
          ),
          const SizedBox(height: 10.0,),
          TextFormField(
            controller: texteController,
            keyboardType: TextInputType.text,
            cursorColor:wColor ,
              decoration:  InputDecoration(
              hintText: 'Type something...',
              hintStyle: TextStyle(
                color: hintText.withOpacity(0.5),
              ),
              border: InputBorder.none,
            ),
          ),
        ],
      ),
    );
  }
}