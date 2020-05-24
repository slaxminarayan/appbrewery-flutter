import 'package:flutter/foundation.dart';

class Task {
  final String name;
  bool isDone;

  Task({@required this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }

  Task.fromMap(Map map)
      : this.name = map['name'],
        this.isDone = map['isDone'];

  Map toMap() {
    return {
      'name': this.name,
      'isDone': this.isDone,
    };
  }
}
