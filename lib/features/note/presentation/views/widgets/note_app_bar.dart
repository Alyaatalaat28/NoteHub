import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../home/presentation/views/widgets/custom_container.dart';

class NotesAppBar extends StatelessWidget {
  const NotesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CustomContainer(
          icon:const Icon(Icons.arrow_back_ios_new,
          color: wColor) ,
          onPressed:(){
            Navigator.pop(context);
          } ,
        ),
        const Spacer(),
        CustomContainer(
          icon:const Icon(Icons.edit,
          color: wColor) ),
      ],
    );
  }
}