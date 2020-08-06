import 'package:flutter/material.dart';
import 'package:todo/screens/taskscreen.dart';
import 'package:todo/models/task_data.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task.dart';
void main() => runApp(
  MultiProvider(providers: [ChangeNotifierProvider(create: (_) => TaskData(),)],

    child: MyApp(),

),
);



  class MyApp extends StatelessWidget{
    Widget build(BuildContext context){
      return MaterialApp(
      home: TaskScreen(),
      );
  }
  }

