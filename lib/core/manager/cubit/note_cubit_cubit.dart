// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/db_helper.dart';
part 'note_cubit_state.dart';

class NoteCubitCubit extends Cubit<NoteCubitState> {
  NoteCubitCubit() : super(NoteCubitInitial());
 static NoteCubitCubit get(context)=>BlocProvider.of(context);
  
// insert
void insertDataToDb(String note, String title) async {
  emit(NoteCubitInsertLoadingState());
  try {
    int value = await DbHelper.insertData(
      '''
      INSERT INTO notes ('note','title')
      VALUES ("$note","$title")
      '''
    );
    emit(NoteCubitInsertSuccessState(value));
    data.add({
      'note': note,
      'title': title,
      'id': value, // Assuming 'id' is the primary key of the note
    });
  } catch (error) {
    emit(NoteCubitInsertErrorState(error.toString()));
    print(error.toString());
  }
}

//update
void updateData(String note,String title,int id){
 emit(NoteCubitUpdateLoadingState());
  DbHelper.updateData('''
UPDATE notes SET
note = "$note",
title = "$title"
WHERE id = $id
'''
).
  then((value) {
    int index = data.indexWhere((note) => note['id'] == id);
    if (index != -1) {
      data[index]['note'] = note;
      data[index]['title'] = title;
    }
    emit(NoteCubitUpdateSuccessState(value));
  }).
  catchError((error){
     emit(NoteCubitUpdateErrorState(error.toString()));
     print(error.toString());
  });
}
//delete
void deleteData(int id){
  emit(NoteCubitDeleteLoadingState());
  DbHelper.deleteData('''
   DELETE FROM notes WHERE id =$id
''').
  then((value) {
     data.removeWhere((note) => note['id'] == id);
    emit(NoteCubitDeleteSuccessState(value));
  }).
  catchError((error){
    emit(NoteCubitDeleteErrorState(error.toString()));
    print(error.toString());
  });
}
//read
List<Map<dynamic,dynamic>> data=[];

void readData(){
  emit(NoteCubitReadLoadingState());
  DbHelper.readData("SELECT * FROM notes").
  then((value) {
    data.addAll(value);
    emit(NoteCubitReadDataSuccessState(value));
    print(data);
  }).
  catchError((error){
    emit(NoteCubitReadDataErrorState(error.toString()));
    print(error.toString());
  });
}



//app mode
bool isDark=false;

void appMode(){
  isDark=!isDark;
  emit(ChangeAppModeState());
}


//app localization
bool isEn=true;

void appLocalization(){
  isEn=!isEn;
  emit(ChangeAppLocalState());
}

}
