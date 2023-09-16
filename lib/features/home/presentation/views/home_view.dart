import 'package:flutter/material.dart';
import 'package:notes_hub/constants.dart';
import 'package:notes_hub/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: kPrimaryColor,
          child: const Icon(Icons.add),
          ),
          body: const HomeViewBody(),
      )
      );
  }
}