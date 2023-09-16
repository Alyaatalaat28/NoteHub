import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 25.0),
      child: Column(
        children:[
        CustomAppBar(),
        Image(
          image: AssetImage('assets/images/Notebook-amico.png'),
          height:287,
          width:350,
        ),
        Text('Create your first note !',
        style: TextStyle(
          color: iconColor,
        ),),
        ]
      ),
    );
  }
}