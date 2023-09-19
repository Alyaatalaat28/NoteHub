import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_hub/core/utils/bloc_observer.dart';

import 'constants.dart';
import 'core/manager/cubit/note_cubit_cubit.dart';
import 'features/home/presentation/views/home_view.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubitCubit(),
      child: BlocConsumer<NoteCubitCubit,NoteCubitState>(
        listener: (context,state){},
        builder:(context,state) {
          return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: kPrimaryColor,
          ),
          home:const HomeView(),
        );
        },
      ),
    );
  }
}

