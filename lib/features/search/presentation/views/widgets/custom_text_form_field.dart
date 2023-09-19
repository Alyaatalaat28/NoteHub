// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({super.key});
  TextEditingController notesController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:notesController ,
      keyboardType:TextInputType.text,
      cursorColor:wColor ,
      decoration: InputDecoration(
        hintText: 'Search by the keyword...',
        hintStyle: TextStyle(
          color: hintText.withOpacity(0.5),),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }
  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: kContainerColor,
      ),
      borderRadius: BorderRadius.circular(30.0),
    );
  }
}