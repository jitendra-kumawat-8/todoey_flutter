import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/Screens/TaskData.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String newTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            )),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Consumer<TaskData>(builder: (context, taskData, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    'Add Task',
                    style: TextStyle(
                        color: Colors.lightBlueAccent, fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlueAccent),
                    ),
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlueAccent),
                    ),
                  ),
                  onChanged: (value) {
                    newTitle = value;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextButton(
                  onPressed: () {
                    taskData.changeTasks(newTitle);
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                    ),
                    child: Center(
                      child: Text(
                        'Add',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
          ),
        ),
      ),
    );
  }
}
