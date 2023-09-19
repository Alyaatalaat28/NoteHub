import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_hub/features/preview/presentation/views/widgets/preview_view_body.dart';

import '../../../../core/manager/cubit/note_cubit_cubit.dart';

class PreviewView extends StatelessWidget {
  const PreviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteCubitCubit,NoteCubitState>(
    listener: (context,state){ },
    builder:(context,state) {  
      return const SafeArea(
        child: Scaffold(
          body: PreviewViewBody(),
        ),
      );
  });
}}