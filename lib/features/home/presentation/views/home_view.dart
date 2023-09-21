// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_hub/constants.dart';
import 'package:notes_hub/features/home/presentation/views/widgets/home_view_body.dart';
import '../../../../core/manager/cubit/note_cubit_cubit.dart';
import '../../../editor/presentation/views/editor_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
     return BlocConsumer<NoteCubitCubit,NoteCubitState>(
      listener:(context,state){} ,
       builder:(context,state)=> SafeArea(
        child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const EditorView())));
            },
            backgroundColor: kContainerColor,
            child: const Icon(Icons.add),
            ),
            body: const Padding(
              padding: EdgeInsets.all(20.0),
              child: HomeViewBody(),
            ),
        )),
     );
  }
  }

