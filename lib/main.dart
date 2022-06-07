import 'package:flutter/material.dart';
import 'package:flutter_application_todo/Provider/todo_provider.dart';
import 'package:flutter_application_todo/pages/todo_home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<TodoProvider>(
      create: (context) => TodoProvider(),
      child: MaterialApp(
        theme: ThemeData.light(),
        home: TODOHome(),
      )));
}
