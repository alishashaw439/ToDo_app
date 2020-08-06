import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String TaskTitle;
  final Function checkBoxCallBack;
  final Function longPressCallBack;

  TaskTile({this.isChecked,this.TaskTitle,this.checkBoxCallBack, this.longPressCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title:Text(TaskTitle,style:TextStyle(
        decoration:isChecked ? TextDecoration.lineThrough : null,
      )),
      trailing: Checkbox(
        activeColor: Color(0xff113F91),
        value:isChecked,
       onChanged: checkBoxCallBack,
      )
    );
  }
}

