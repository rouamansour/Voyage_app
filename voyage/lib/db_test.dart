import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final Future<Database> database= openDatabase(
    join (await getDatabasesPath(),'doggie_database.db'),
    onCreate: (db,version){
      return db.execute(
        "CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT,age INTEGER)",
      );
    },
    version :1,
      );
    }
  