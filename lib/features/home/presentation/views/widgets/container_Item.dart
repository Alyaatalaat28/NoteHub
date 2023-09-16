import 'package:flutter/material.dart';
import 'package:notes_hub/constants.dart';

class ContainerItem extends StatelessWidget {
  const ContainerItem({super.key, this.isSearch=true,this.onPressed });
  final bool isSearch;
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
       icon:Icon(isSearch?Icons.search:Icons.info_outline,
       color: iconColor,
       )),
    );
  }
}