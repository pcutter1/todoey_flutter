import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {

  List<Task> _tasks = [
    Task(name: 'Buy Milk')
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String taskText) {
    final task = Task(name: taskText);
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