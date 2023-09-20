import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_hub/features/editor/presentation/views/widgets/editor_view_body.dart';

import '../../../../core/manager/cubit/note_cubit_cubit.dart';
import '../../../home/presentation/views/home_view.dart';

class EditorView extends StatelessWidget {
  const EditorView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteCubitCubit,NoteCubitState>(
    listener: (context,state){
      if(state is NoteCubitInsertSuccessState ){
        Navigator.push(context, MaterialPageRoute(builder: ((context) => const HomeView())));
      }
     },
    builder:(context,state) { 
      return  Scaffold(
      body: EditorViewBody(),
    );}
    );
  }
}