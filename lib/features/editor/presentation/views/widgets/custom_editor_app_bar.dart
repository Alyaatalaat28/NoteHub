import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/custom_container.dart';
import 'editor_alert_dialog.dart';

class CustomNoteAppBar extends StatelessWidget {
  const CustomNoteAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CustomContainer(
          icon:const Icon(Icons.arrow_back_ios_new) ,
          onPressed: () {
            showDialog(context: context, builder: (context) => EditorAlertDialog(context));
           },
        ),
        const Spacer(),
        CustomContainer(
          icon:const Icon(Icons.remove_red_eye_outlined) ,
          onPressed: (){},
        ),
        const SizedBox(width:21,),
        CustomContainer(
          icon:const Icon(Icons.save_outlined) ,
          onPressed: (){},
        ),
      ],
    );
  }
}