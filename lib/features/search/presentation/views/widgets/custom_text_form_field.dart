// ignore_for_file: must_be_immutable, deprecated_member_use

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
        hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
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