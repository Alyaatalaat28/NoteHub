import 'package:flutter/material.dart';
import 'package:notes_hub/constants.dart';
import 'package:notes_hub/features/home/presentation/views/widgets/home_view_body.dart';

import '../../../editor/presentation/views/editor_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: ((context) => const EditorView())));
          },
          backgroundColor: kContainerColor,
          child: const Icon(Icons.add),
          ),
          body: const HomeViewBody(),
      )
      );
  }
}