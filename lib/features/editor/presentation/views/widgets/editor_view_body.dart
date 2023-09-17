import 'package:flutter/material.dart';
import 'package:notes_hub/features/editor/presentation/views/widgets/text_form_field.dart';

import 'custom_editor_app_bar.dart';

class EditorViewBody extends StatelessWidget {
  const EditorViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding:const EdgeInsets.symmetric(vertical: 50.0,horizontal: 25.0),
        child: Column(
          children: [
            const CustomNoteAppBar(),
            NoteTextFormFields(),
          ],
        ),
      )
      );
  }
}