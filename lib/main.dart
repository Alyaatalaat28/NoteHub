import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:notes_hub/core/utils/bloc_observer.dart';

import 'constants.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home:const HomeView(),
    );
  }
}

