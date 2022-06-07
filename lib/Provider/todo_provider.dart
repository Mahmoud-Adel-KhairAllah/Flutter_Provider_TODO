import 'package:flutter/cupertino.dart';

import '../model/task.dart';

class TodoProvider extends ChangeNotifier {
  List<Task> tasksList = [
    Task('الإستيقاظ الفجر', false),
    Task('صلاة الفجر', false),
    Task('صلاة الضحى', false),
    Task('صلاة الظهر', false),
    Task('صلاة العصر', false),
    Task('صلاة المغرب', false),
    Task('صلاة العشاء', false),
    Task('صلاة الوتر', false),
    Task('صلاة القيام', false),
  ];
  addTask(Task task) {
    tasksList.add(task);
    notifyListeners();
  }

  updateTask(Task task) {
    int index = tasksList.indexOf(task);
    tasksList[index].iscompleted = !tasksList[index].iscompleted!;
    notifyListeners();
  }

  deleteTask(Task task) {
    tasksList.remove(task);
    notifyListeners();
  }
}
