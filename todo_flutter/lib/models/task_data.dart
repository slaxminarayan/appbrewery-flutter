import 'package:flutter/foundation.dart';
import 'dart:collection';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../models/task.dart';


class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  // SharedPreferences sharedPreferences;
  // initSharedPreferences() async {
  //   sharedPreferences = await SharedPreferences.getInstance();
  //   print('In initSharedPreferences()');
  //   loadData();
  // }
  // void saveData() {
  //   List<String> spList = _tasks.map((item) => json.encode(item.toMap())).toList();
  //   sharedPreferences.setStringList('list', spList);
  //   print(spList);
  // }
  // void loadData() {
  //   List<String> spList = sharedPreferences.getStringList('list');
  //   _tasks =
  //       spList.map((item) => Task.fromMap(json.decode(item))).toList();
  //   //print('IN LoadData()');
  //   // print(list.length);
  // }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    // saveData();
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    // saveData();
    notifyListeners();
  }
}
