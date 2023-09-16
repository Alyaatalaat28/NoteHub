import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../features/home/presentation/views/widgets/container_Item.dart';
import 'alert_dialog.dart';

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
        const ContainerItem(),
        const SizedBox(width:21,),
        ContainerItem(isSearch: false,
        onPressed: () => showDialog(
          context: context,
           builder: (context) =>showAlertDialog(context) ,),),
      ],
    );
  }
}