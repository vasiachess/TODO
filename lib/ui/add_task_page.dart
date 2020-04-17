import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task_data.dart';
import 'package:flutter_todoey/models/task_model.dart';
import 'package:provider/provider.dart';

class AddTaskPage extends StatelessWidget {
  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.0),
              child: TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (text) {
                  newTaskTitle = text;
                },
              ),
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                if (newTaskTitle != null) {
                  Provider.of<TaskData>(context)
                      .addTask(Task(name: newTaskTitle));
                  Navigator.pop(context);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
