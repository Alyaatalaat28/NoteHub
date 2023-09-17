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
      cursorColor:iconColor ,
      decoration:const InputDecoration(
        hintText: 'Search by the keyword...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        )
      ),
    );
  }
}