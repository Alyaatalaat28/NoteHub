import 'package:flutter/material.dart';
import '../../../../../core/manager/cubit/note_cubit_cubit.dart';
import '../../../../note/presentation/views/note_view.dart';
import '../../../../note/presentation/views/update_note.dart';
Widget noteItem(String title,String note,int id,Color color,context){  
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>NotesView(
        text:note ,
        title:title ,
      )));
    },
    child: Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.horizontal,
      background: Container(
        color: Colors.red,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Icon(Icons.delete),
           SizedBox(width: 8,),
          ],
        ),
      ),
      secondaryBackground:Container(
        color: Colors.blue,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Icon(Icons.edit_note_rounded),
           SizedBox(width: 8,),
          ],
        ),
      ), 
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 30.0),
        decoration: BoxDecoration(
           color:color,
           borderRadius: BorderRadius.circular(5),
        ),
        width: double.infinity,
        height: MediaQuery.of(context).size.height*.15,
        child: Text(title,
        style: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
        ), 
        ),
      ),
      onDismissed: (direction){
        if(direction==DismissDirection.endToStart){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateNoteScreen(
            note: note,
            title: title,
            id: id,
            
          )));
          
        }else if(direction==DismissDirection.startToEnd){
           NoteCubitCubit.get(context).deleteData(id);
        }
      },
    ),
  );
}