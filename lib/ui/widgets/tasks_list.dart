import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task_data.dart';
import 'package:flutter_todoey/models/task_model.dart';
import 'package:flutter_todoey/ui/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            Task task = taskData.tasks[index];
            return TaskTile(
              longPress: (){
                Provider.of<TaskData>(context).deleteTask(task);
              },
                taskTitle: task.name,
                isChecked: task.isDone,
                checkBoxCalback: (bool checkboxState) {
                  taskData.updateTask(task);
                });

          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
