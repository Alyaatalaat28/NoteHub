import 'package:flutter/material.dart';
import 'package:notes_hub/features/editor/presentation/views/widgets/editor_view_body.dart';

class EditorView extends StatelessWidget {
  const EditorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditorViewBody(),
    );
  }
}