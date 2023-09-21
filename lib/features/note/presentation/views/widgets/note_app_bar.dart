import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/manager/cubit/note_cubit_cubit.dart';
import '../../../../home/presentation/views/widgets/custom_container.dart';

class NotesAppBar extends StatelessWidget {
   NotesAppBar({super.key,required this.id,required this.note,required this.title});
  final String note;
  final String title;
  int id;
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
        const Spacer(),
        CustomContainer(
          onPressed: (){
            NoteCubitCubit.get(context).updateData(note, title, id);
          },
          icon:const Icon(Icons.edit,
          color: wColor) ),
      ],
    );
  }
}