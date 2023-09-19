// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class PreviewText extends StatelessWidget {
  const PreviewText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text('Book Review : The Design of Everyday Things by Don Norman',
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize:35 ,
        ),),
        const SizedBox(height: 37.0,),
        Text('''
'The Design of Everyday Things is required reading for anyone who is interested in the user experience. I personally like to reread it every year or two.

Norman is aware of the durability of his work and the applicability of his principles to multiple disciplines. 

If you know the basics of design better than anyone else, you can apply them flawlessly anywhere.'
''',
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize:23 ,
        ),),
      ],
    );
  }
}