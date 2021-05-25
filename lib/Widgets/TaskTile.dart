import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/Screens/TaskData.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function callback;
  TaskTile({ @required this.taskTitle, @required this.isChecked, this.callback});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListTile(
          title: Text(taskTitle, style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null
          ),),
          trailing: Checkbox(
              checkColor: Colors.white,
              activeColor: Colors.lightBlueAccent,
              value: isChecked,
              onChanged: callback
          ),
      );
    }
    );
  }
}

