import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import 'custom_text_form_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 25.0),
      child: Column(
        children: [
          CustomTextFormField(),
          const Expanded(
            child: Image(
              image: AssetImage('assets/images/File searching-cuate.png'),    
            ),
          ),
          const Text('File not found. Try searching again.',
          style: TextStyle(
            color: iconColor,
          ),),
        ],
      ),
    );
  }
}