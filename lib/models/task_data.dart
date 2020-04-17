import 'package:flutter/foundation.dart';
import 'package:flutter_todoey/models/task_model.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(
      name: 'Grab SOme bear',
    ),
    Task(
      name: 'Grab SOme bear',
    ),
    Task(
      name: 'Grab SOme bear',
    ),
    Task(
      name: 'Grab SOme bear',
    ),
  ];

  get tasks => _tasks;

  int get taskCount => _tasks.length;

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
