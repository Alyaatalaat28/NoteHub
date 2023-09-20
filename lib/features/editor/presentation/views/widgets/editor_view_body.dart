// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/manager/cubit/note_cubit_cubit.dart';
import '../../../../../generated/l10n.dart';
import '../../../../home/presentation/views/home_view.dart';
import '../../../../home/presentation/views/widgets/custom_container.dart';
import '../../../../preview/presentation/views/preview_view.dart';

class EditorViewBody extends StatelessWidget {
   EditorViewBody({super.key});
  TextEditingController titleController=TextEditingController();
  TextEditingController textController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding:const EdgeInsets.symmetric(vertical: 50.0,horizontal: 25.0),
        child: Column(
          children: [
             Row(
      children: [
        CustomContainer(
          icon:const Icon(Icons.arrow_back_ios_new,color:wColor) ,
          onPressed: () {
            showDialog(context: context, builder: (context) => editorAlertDialog(context));
           },
        ),
        const Spacer(),
        CustomContainer(
          icon:const Icon(Icons.remove_red_eye_outlined,color:wColor) ,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PreviewView(
              text:textController.text,
              title:titleController.text ,
            )));
          },
        ),
        const SizedBox(width:21,),
        CustomContainer(
          icon:const Icon(Icons.save_outlined,color:wColor) ,
          onPressed: ()async{
             NoteCubitCubit.get(context).insertDataToDb(textController.text, titleController.text);
          },
        ),
      ],
    ),
         const SizedBox(height:30,),
           TextFormField(
            controller: titleController,
            cursorColor:wColor ,
            keyboardType: TextInputType.text,
            decoration:  InputDecoration(
              hintText: S.of(context).formt,
              hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 48,
                color:hintText.withOpacity(0.5) ,
              ),
              border:InputBorder.none ,
            ),
          ),
          const SizedBox(height: 10.0,),
          TextFormField(
            controller: textController,
            keyboardType: TextInputType.text,
            cursorColor:wColor ,
              decoration:  InputDecoration(
              hintText: S.of(context).content,
              hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: hintText.withOpacity(0.5),
              ),
              border: InputBorder.none,
            ),
          ),
          ],
        ),
      )
      );
  }



  Widget editorAlertDialog(context){
  return  AlertDialog(
      title:const Icon(Icons.info_outline,
      color: wColor,
      ) ,
      content:  Text(S.of(context).changes,
      textAlign: TextAlign.center,
      style: const TextStyle(color: wColor)),
      backgroundColor:kPrimaryColor ,
      actions: [
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
      Container(
         color:Colors.red,
         width: 100,
         height: 30,
         child: TextButton(
           onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeView()));
           },
            child:  Text(S.of(context).no,
            style: const TextStyle(
             color: wColor,
            ),
            )),
       ), 
        Container(
          color:Colors.green,
          width: 100,
          height: 30,
            child: TextButton(
            onPressed: ()async{
               NoteCubitCubit.get(context).insertDataToDb(textController.text, titleController.text);
            },
             child:  Text(S.of(context).yes,
              style: const TextStyle(
              color: wColor,
             ),
             )),
          ),
        ])
      ],
  );
}
}