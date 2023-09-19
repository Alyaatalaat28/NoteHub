import 'package:flutter/material.dart';
import 'package:notes_hub/features/preview/presentation/views/widgets/preview_app_bar.dart';
import 'package:notes_hub/features/preview/presentation/views/widgets/preview_text.dart';

class PreviewViewBody extends StatelessWidget {
  const PreviewViewBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:EdgeInsets.symmetric(vertical: 50.0,horizontal: 25.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            PreviewAppBar(),
            SizedBox(height: 42,),
            PreviewText(),
            
          ],
        ),
      ),
    );
  }
}