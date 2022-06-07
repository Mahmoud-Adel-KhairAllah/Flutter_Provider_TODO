import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_todo/widgets/task_widget.dart';
import 'package:provider/provider.dart';

import '../Provider/todo_provider.dart';

class InCompleteTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Provider.of<TodoProvider>(context).tasksList.isEmpty
        ? Center(
            child: IconButton(
              icon: Icon(Icons.delete_outline),
              onPressed: () {},
            ),
          )
        : ListView.builder(
            itemCount: Provider.of<TodoProvider>(context)
                .tasksList
                .where((element) => !element.iscompleted!)
                .length,
            itemBuilder: (context, index) {
              return TaskWidget(Provider.of<TodoProvider>(context)
                  .tasksList
                  .where((element) => !element.iscompleted!)
                  .toList()[index]);
            });
  }
}
