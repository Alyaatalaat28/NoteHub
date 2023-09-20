// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:notes_hub/core/manager/cubit/note_cubit_cubit.dart';

import '../../../../../constants.dart';
import '../../../../../generated/l10n.dart';
import 'custom_container.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         Text(
          S.of(context).title,
          style:Theme.of(context).textTheme.bodyText1!.copyWith (
            fontSize: 43,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
         CustomContainer(
          onPressed: (){
            NoteCubitCubit.get(context).appMode();
          },
           icon:const Icon(Icons.dark_mode_outlined,color: wColor),
          ) ,
        const SizedBox(width:21,),
        CustomContainer(
           onPressed:()=>NoteCubitCubit.get(context).appLocalization(),
           icon:const Icon(Icons.language,color: wColor),
           ),
      ],
    );
  }
}