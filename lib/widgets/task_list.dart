import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo/models/task_data.dart';
import 'package:todo/models/task.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData ,child){
        return  ListView.builder(
            itemBuilder: (context,index){
              final task = taskData.tasks[index];
              return TaskTile(TaskTitle: task.name,
                  isChecked:  task.isDone,
                  checkBoxCallBack:(checkBoxValue){
                  taskData.updateTask(task);
                  },
                longPressCallBack: (){
                taskData.deleteTask(task);
                },
                  );

            },
            itemCount:  taskData.taskCount);
      }

    );
  }
}