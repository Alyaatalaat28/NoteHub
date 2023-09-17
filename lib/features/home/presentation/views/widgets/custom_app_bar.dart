import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import 'custom_container.dart';
import '../../../../search/presentation/views/search_view.dart';
import '../../../../../core/widgets/alert_dialog.dart';

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
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchView())),
           icon:const Icon(Icons.search),
          ) ,
        const SizedBox(width:21,),
        CustomContainer(
        onPressed: () => showDialog(
          context: context,
           builder: (context) =>showAlertDialog(context) ,),
           icon:const Icon(Icons.info_outline),
           ),
      ],
    );
  }
}