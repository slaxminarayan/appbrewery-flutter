import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/tasks_screen.dart';
import './models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // @override
  // void initState() {
  //   setState(() {
  //     TaskData().initSharedPreferences();
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
