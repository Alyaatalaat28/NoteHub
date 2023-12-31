import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../home/presentation/views/widgets/custom_container.dart';

class PreviewAppBar extends StatelessWidget {
  const PreviewAppBar({super.key});

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
      ],
    );
  }
}