import 'package:flutter/material.dart';
import 'package:today_do_app/sceens/add_task_screen.dart';
import 'package:today_do_app/widgets/tasks_list.dart';
import 'package:provider/provider.dart';

import 'models/task_data.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: AddScreen((newTaskTitle) {
                          // setState(() {
                          //   tasks.add(newTaskTitle);
                          //   Navigator.pop(context);
                          //  });
                        })),
                  ));
        },
        backgroundColor: Colors.indigo[400],
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.teal[400],
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 80,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Icon(
                Icons.playlist_add_check,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'ToDayDo',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          Text(
            '${Provider.of<TaskData>(context).tasks.length} Tasks',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TasksList(),
            ),
          ),
        ]),
      ),
    );
  }
}
