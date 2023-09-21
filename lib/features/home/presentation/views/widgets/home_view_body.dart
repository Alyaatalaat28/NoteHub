import 'package:flutter/material.dart';
import 'package:notes_hub/features/home/presentation/views/widgets/custom_app_bar.dart';

import '../../../../../generated/l10n.dart';
import 'note_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
     physics: BouncingScrollPhysics(),
     slivers: [ 
       SliverToBoxAdapter(
            child:  CustomAppBar(),),
         SliverFillRemaining(
           child: NotesListView()),
          ],
    );
  }
}