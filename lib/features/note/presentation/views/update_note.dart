// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_hub/features/note/presentation/views/widgets/note_app_bar.dart';

import '../../../../constants.dart';
import '../../../../core/manager/cubit/note_cubit_cubit.dart';
import '../../../home/presentation/views/home_view.dart';

class UpdateNoteScreen  extends StatefulWidget {
   UpdateNoteScreen ({super.key,required this.note,required this.title,required this.id});
  
   String note;
  final String title;
  final int id;

  @override
  State<UpdateNoteScreen> createState() => _UpdateNoteScreenState();
}

class _UpdateNoteScreenState extends State<UpdateNoteScreen> {
   TextEditingController noteController=TextEditingController();
   TextEditingController titleController=TextEditingController();
    @override
  void initState() {
    super.initState();
    noteController.text =widget.note;
    titleController.text =  widget.title;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteCubitCubit,NoteCubitState>(
      listener:(context,state){
        if(state is NoteCubitUpdateSuccessState){
          Navigator.push(context, MaterialPageRoute(builder: ((context) => const HomeView())));
        }
      } ,
      builder:(context,state){
     return  Scaffold(
      body:Padding(
      padding:const EdgeInsets.symmetric(vertical: 50.0,horizontal: 25.0),
      child: Column(
        children: [
            NotesAppBar(id:widget.id,note:widget.note,title:widget.title),
           const SizedBox(height:30,),
           TextFormField(
            controller: titleController,
            cursorColor:wColor ,
            keyboardType: TextInputType.text,
            decoration:  InputDecoration(
              hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 48,
                color:hintText.withOpacity(0.5) ,
              ),
              border:InputBorder.none ,
            ),
          ),
          const SizedBox(height: 10.0,),
          TextFormField(
            controller: noteController,
            keyboardType: TextInputType.text,
            cursorColor:wColor ,
              decoration:  InputDecoration(
              hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: hintText.withOpacity(0.5),
              ),
              border: InputBorder.none,
            ),
          ),

        ])));
      } ,
    );
  }
}