import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_hub/features/search/presentation/views/widgets/search_view_body.dart';

import '../../../../core/manager/cubit/note_cubit_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<NoteCubitCubit,NoteCubitState>(
    listener: (context,state){ },
    builder:(context,state) { 
      return const Scaffold(
      body:SearchViewBody(),
    );}
    );
  }
}