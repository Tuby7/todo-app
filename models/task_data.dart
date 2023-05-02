import 'package:flutter/material.dart';
import 'package:today_do_app/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Go Shopping'),
    Task(name: 'Buy a gift'),
    Task(name: 'Sale a Car'),
  ];

  void addTasd(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
