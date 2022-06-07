import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_todo/Provider/todo_provider.dart';
import 'package:flutter_application_todo/model/task.dart';

import 'package:flutter_application_todo/widgets/task_widget.dart';
import 'package:provider/provider.dart';

class TaskWidget extends StatelessWidget {
  Task? task;
  TaskWidget(this.task);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task!.iscompleted ?? false ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      child: CheckboxListTile(
        secondary: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            Provider.of<TodoProvider>(context, listen: false).deleteTask(task!);
          },
        ),
        title: Text(task!.name ?? ''),
        value: task!.iscompleted ?? false,
        onChanged: (v) {
          Provider.of<TodoProvider>(context, listen: false).updateTask(task!);
        },
      ),
    );
  }
}
