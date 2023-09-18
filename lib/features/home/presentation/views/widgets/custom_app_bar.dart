import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import 'custom_container.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Text(
          'Notes',
          style: TextStyle(
            fontSize: 43,
            fontWeight: FontWeight.w600,
            color:iconColor,
          ),
        ),
        const Spacer(),
         CustomContainer(
           icon:const Icon(Icons.dark_mode_outlined,color: iconColor),
          ) ,
        const SizedBox(width:21,),
        CustomContainer(
           icon:const Icon(Icons.language,color: iconColor),
           ),
      ],
    );
  }
}