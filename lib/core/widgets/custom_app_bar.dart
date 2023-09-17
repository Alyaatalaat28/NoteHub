import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../features/home/presentation/views/widgets/custom_container.dart';
import '../../features/search/presentation/views/search_view.dart';
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
         CustomContainer(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchView())),
        ),
        const SizedBox(width:21,),
        CustomContainer(isSearch: false,
        onPressed: () => showDialog(
          context: context,
           builder: (context) =>showAlertDialog(context) ,),),
      ],
    );
  }
}