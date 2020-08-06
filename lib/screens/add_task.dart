import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class AddTask extends StatelessWidget{
String newTaskTitle;
  @override
  Widget build(BuildContext context){
    return Container(
      color: Color(0xff757575),
      child:Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
        child:Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Text('Add Task', style:TextStyle(
                color:Color(0xff113F91),
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
              ),
              ),
              TextField(
                cursorColor: Color(0xff113F91),
                autofocus: true,
                onChanged: (newText){
                  newTaskTitle = newText;
                },
              ),
            SizedBox(
              height:20.0,
            ),
             FlatButton(onPressed: (){

                    Provider.of<TaskData>(context, listen:false).addTask(newTaskTitle);
                    Navigator.pop(context);
             },
                 child: Text('Add',style: TextStyle(color:Colors.white),),
                 color:Color(0xff113F91),
             )
            ],
          ),
        )
      )

    );
  }
}