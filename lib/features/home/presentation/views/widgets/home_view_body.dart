// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../../../../../generated/l10n.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 25.0),
      child: Column(
        children:[
        const CustomAppBar(),
        const Expanded(
          child: Image(
            image: AssetImage('assets/images/Notebook-amico.png'),
          ),
        ),
        Text(S.of(context).text,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 20.0,
        ),),
        const SizedBox(height: 10,),
        ]
      ),
    );
  }
}