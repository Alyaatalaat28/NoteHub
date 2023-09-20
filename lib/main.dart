import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_hub/core/utils/bloc_observer.dart';
import 'core/manager/cubit/note_cubit_cubit.dart';
import 'core/theme.dart';
import 'features/home/presentation/views/home_view.dart';
import 'generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main()async {
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
            locale:NoteCubitCubit.get(context).isEn?const Locale('en'):const Locale('ar'),
            localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          theme:lightTheme ,
          darkTheme:darkTheme ,
          themeMode:NoteCubitCubit.get(context).isDark?ThemeMode.dark:ThemeMode.light,
          home:const HomeView(), 
        );
        },
      ),
    );
  }
}

