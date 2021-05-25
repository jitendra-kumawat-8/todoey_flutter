import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/Widgets/Tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(title: 'go to the gym'),
    Task(title: 'Lift'),
    Task(title: 'Lift again')
  ];

  void changeTasks(String value){
    Task task = Task(title: value);
    tasks.add(task);
    notifyListeners();
  }
  void toggleTasks(Task task){
      task.isDone = !task.isDone;
      notifyListeners();
  }
}