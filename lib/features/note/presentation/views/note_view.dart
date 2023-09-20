// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_hub/features/preview/presentation/views/widgets/preview_app_bar.dart';
import '../../../../core/manager/cubit/note_cubit_cubit.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key,required this.text,required this.title});
  final String text;
  final String title;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteCubitCubit,NoteCubitState>(
    listener: (context,state){ },
    builder:(context,state) {  
      return  SafeArea(
        child: Scaffold(
      body: Padding(
      padding:const EdgeInsets.symmetric(vertical: 50.0,horizontal: 25.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const PreviewAppBar(),
            const SizedBox(height: 42,),
            Text(title,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize:35 ,
        ),),
        const SizedBox(height: 37.0,),
        Text('''
               $text
        ''',
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize:23 ,
        ),),
            
          ],
        ),
      ),
    ),
        ),
      );
  });
}}