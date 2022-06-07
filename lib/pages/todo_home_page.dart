import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_todo/model/task.dart';
import 'package:flutter_application_todo/pages/all_tasks.dart';
import 'package:flutter_application_todo/pages/complete_tasks.dart';
import 'package:flutter_application_todo/pages/incomplete_tasks.dart';

class TODOHome extends StatefulWidget {
  @override
  State<TODOHome> createState() => _TODOHomeState();
}

class _TODOHomeState extends State<TODOHome> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TODO APP'),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.list_alt),
                text: 'ALL LIST',
              ),
              Tab(
                icon: Icon(Icons.check_box_sharp),
                text: 'complete LIST',
              ),
              Tab(
                icon: Icon(Icons.check_box_outline_blank),
                text: 'incomplete LIST',
              ),
            ]),
          ),
          body: TabBarView(
              children: [AllTasks(), CompleteTasks(), InCompleteTasks()]),
        ));
  }
}
