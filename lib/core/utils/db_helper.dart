// ignore_for_file: avoid_print, depend_on_referenced_packages

import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper{
  static Database? _db;

Future<Database?> get db async{
  if(_db==null){
    _db=await initialDb();
    return _db;
    }
  else{
    return _db;
  }
  }

// initialize database
initialDb()async{
  String databasePath=await getDatabasesPath();
  String path=join(databasePath,'alyaa.db');
  Database mydb=await openDatabase(path,onCreate: _onCreate);
  return mydb;
}

  // create database
  FutureOr<void> _onCreate(Database db, int version) async{
    await db.execute('''
    CREATE TABLE "notes"(
      "id" INTEGER AUTOINCREMENT NOT NULL PRIMARY KEY,
      "title" TEXT NOT NULL,
      "note" TEXT NOT NULL
    )
''' 
    );
    print("onCreate");
  }

// read database
readData(String sql)async{
  Database? mydb=await db;
  List<Map> response=await mydb!.rawQuery(sql);
  return response;
}

// insert database
insertData(String sql)async{
  Database? mydb=await db;
  int response=await mydb!.rawInsert(sql);
  return response;
}

// update database
updateData(String sql)async{
  Database? mydb=await db;
  int response=await mydb!.rawUpdate(sql);
  return response;
}

// delete database
deleteData(String sql)async{
  Database? mydb=await db;
  int response=await mydb!.rawDelete(sql);
  return response;
}

}