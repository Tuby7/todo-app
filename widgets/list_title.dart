import 'package:flutter/material.dart';

class ListTitle extends StatelessWidget {
  final bool isCheak;
  final String taskTiltle;
  final void Function(bool?) cheakBoxChane;
  final void Function() listIleDelele;

  ListTitle(
      {required this.isCheak,
      required this.taskTiltle,
      required this.cheakBoxChane,
      required this.listIleDelele});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTiltle,
        style: TextStyle(
          decoration: isCheak ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isCheak,
        onChanged: cheakBoxChane,
      ),
      onLongPress: listIleDelele,
    );
  }
}
