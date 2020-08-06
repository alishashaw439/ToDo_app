import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/widgets/task_list.dart';
import 'package:todo/screens/add_task.dart';
import 'package:todo/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';


class TaskScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff113F91),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTask(),
              )
              )
          );
        },
        backgroundColor: Color(0xff113F91),

        child:Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            padding: EdgeInsetsDirectional.only(top:30.0,bottom:30.0,start:30.0,end:30.0),
            child: Column(

              children:<Widget> [
                CircleAvatar(child: Icon(Icons.list,size:40.0),backgroundColor: Colors.white,radius:30.0),
                SizedBox(
                  height:20.0,
                ),
                Text("TODO",
                style:TextStyle(color: Colors.white,fontSize: 40.0,fontWeight: FontWeight.w900)),
                Text('${Provider.of<TaskData>(context).taskCount} tasks',style:TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20.0,color: Colors.white)),

              ],
            ),


          ),
          Expanded(
            child: Container(

              decoration: BoxDecoration(

                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),

                color: Colors.white,
              ),
                child:Container(
                  padding: EdgeInsets.all(20.0),
                  child: TaskList(),
                )
              )
            ),

        ],
      ),

    );
  }
}



