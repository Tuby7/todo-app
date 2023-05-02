import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:today_do_app/models/task_data.dart';
import 'list_title.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return ListTitle(
              isCheak: taskData.tasks[index].isDone,
              taskTiltle: taskData.tasks[index].name,
              cheakBoxChane: (newValue) {
                taskData.updateTask(taskData.tasks[index]);
              },
              listIleDelele: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}
