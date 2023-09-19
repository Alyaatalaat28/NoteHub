import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/db_helper.dart';
part 'note_cubit_state.dart';

class NoteCubitCubit extends Cubit<NoteCubitState> {
  NoteCubitCubit() : super(NoteCubitInitial());
 static NoteCubitCubit get(context)=>BlocProvider.of(context);
  
// insert
void insertData(String note,String title){
  emit(NoteCubitInsertLoadingState());
   DbHelper.insertData(
    '''
    INSERT INTO notes ('note','title')
    VALUES ("$note","$title")
    '''
  ).then((value) {
    emit(NoteCubitInsertSuccessState(value));
  }).
  catchError((error){
    emit(NoteCubitInsertErrorState(error.toString()));
  });
 
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
    emit(NoteCubitUpdateSuccessState(value));
  }).
  catchError((error){
     emit(NoteCubitUpdateErrorState(error.toString()));
  });
}
//delete
void deleteData(int id){
  emit(NoteCubitDeleteLoadingState());
  DbHelper.deleteData('''
"DELETE FROM notes WHERE id =$id"
''').
  then((value) {
    emit(NoteCubitDeleteSuccessState(value));
  }).
  catchError((error){
    emit(NoteCubitDeleteErrorState(error.toString()));
  });
}
//read
void readData(){
  emit(NoteCubitReadLoadingState());
  DbHelper.readData("SELECT * FROM notes").
  then((value) {
    emit(NoteCubitReadDataSuccessState(value));
  }).
  catchError((error){
    emit(NoteCubitReadDataErrorState(error.toString()));
  });
}



}
