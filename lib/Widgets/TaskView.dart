import 'package:flutter/material.dart';
import 'package:todoey_flutter/Screens/TaskData.dart';
import 'package:todoey_flutter/Widgets/TaskTile.dart';
import 'package:provider/provider.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TaskTile(
                taskTitle: taskData.tasks[index].title,
                isChecked: taskData.tasks[index].isDone,
                callback: (value){
                  taskData.toggleTasks(taskData.tasks[index]);
                }

              ),
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
