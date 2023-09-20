import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_hub/constants.dart';
import 'package:notes_hub/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:notes_hub/features/home/presentation/views/widgets/home_view_body.dart';

import '../../../../core/manager/cubit/note_cubit_cubit.dart';
import '../../../editor/presentation/views/editor_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteCubitCubit,NoteCubitState>(
    listener: (context,state){ },
    builder:(context,state) {  
     return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: ((context) => const EditorView())));
          },
          backgroundColor: kContainerColor,
          child: const Icon(Icons.add),
          ),
          body: Padding(
         padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 25.0),
         child: Column(
         children:[
        const CustomAppBar(),
        const Expanded(
          child: Image(
            image: AssetImage('assets/images/Notebook-amico.png'),
          ),
        ),
        Text('Create your first note !',
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 20.0,
        ),),
        const SizedBox(height: 10,),
        ]
      ),
    ),
      ));
  });
  }

}