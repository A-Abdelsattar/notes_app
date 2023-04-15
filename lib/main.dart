import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/src/app_root.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox('notes');
  runApp(const AppRoot());
}

