// ignore_for_file: avoid_print, depend_on_referenced_packages

import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper{
  static Database? _db;

static Future<Database?> get db async{
  if(_db==null){
    _db=await initialDb();
    return _db;
    }
  else{
    return _db;
  }
  }

// initialize database
static initialDb()async{
  String databasePath=await getDatabasesPath();
  String path=join(databasePath,'alyaa.db');
  Database mydb=await openDatabase(path,onCreate: _onCreate);
  return mydb;
}

  // create database
  static FutureOr<void> _onCreate(Database db, int version) async{
    await db.execute('''
    CREATE TABLE "notes"(
      "id" INTEGER AUTOINCREMENT NOT NULL PRIMARY KEY,
      "note" TEXT NOT NULL
      "title" TEXT NOT NULL,
    )
''' 
    );
    print("onCreate");
  }

// read database
static Future<List<Map>> readData(String sql)async{
  Database? mydb=await db;
  List<Map> response=await mydb!.rawQuery(sql);
  return response;
}

// insert database
static Future<int> insertData(String sql)async{
  Database? mydb=await db;
  int response=await mydb!.rawInsert(sql);
  return response;
}

// update database
static Future<int> updateData(String sql)async{
  Database? mydb=await db;
  int response=await mydb!.rawUpdate(sql);
  return response;
}

// delete database
static Future<int> deleteData(String sql)async{
  Database? mydb=await db;
  int response=await mydb!.rawDelete(sql);
  return response;
}

}