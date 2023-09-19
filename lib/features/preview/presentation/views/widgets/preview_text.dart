import 'package:flutter/material.dart';
import '../../../../../constants.dart';

class PreviewText extends StatelessWidget {
  const PreviewText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Book Review : The Design of Everyday Things by Don Norman',
        style: TextStyle(
          fontSize:35 ,
          color:wColor ,
        ),),
        SizedBox(height: 37.0,),
        Text('''
'The Design of Everyday Things is required reading for anyone who is interested in the user experience. I personally like to reread it every year or two.

Norman is aware of the durability of his work and the applicability of his principles to multiple disciplines. 

If you know the basics of design better than anyone else, you can apply them flawlessly anywhere.'
''',
        style: TextStyle(
          fontSize:23 ,
          color:wColor ,
        ),),
      ],
    );
  }
}