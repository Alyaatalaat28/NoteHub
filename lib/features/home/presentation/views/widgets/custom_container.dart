// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:notes_hub/constants.dart';

class CustomContainer extends StatelessWidget {
   CustomContainer({super.key,required this.icon ,this.onPressed });
  Widget icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration:const BoxDecoration(
        color: kContainerColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
       child: IconButton(
         onPressed:onPressed,
         icon:icon,
       )
    );
  }
}