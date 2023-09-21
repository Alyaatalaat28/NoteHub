// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_hub/features/home/presentation/views/widgets/random_colors.dart';

import '../../../../../core/manager/cubit/note_cubit_cubit.dart';
import '../../../../../generated/l10n.dart';
import 'note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteCubitCubit, NoteCubitState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        var data=NoteCubitCubit.get(context).data;
        if(data.isNotEmpty) {
          return ListView.builder(
            itemBuilder:(context,index) =>noteItem(data[index]['title'],data[index]['note'],data[index]['id'],generateColor(),context),
            itemCount:NoteCubitCubit.get(context).data.length ,
            );
        }
          return  Column(
          children: [
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
          ]);
        }
    );
  }
}