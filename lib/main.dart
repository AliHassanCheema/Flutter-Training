import 'package:flutter/material.dart';
import 'package:flutter_training/routes.dart';
// import 'package:flutter_training/Task3/counterapp.dart';
// import 'package:flutter_training/Task3/counterapp.dart';
// import 'package:flutter_training/routes.dart';
// import 'package:flutter_training/routes.dart';

// import 'Task3/counterapp.dart';
// import 'main_list.dart';

// import 'Task2/actor_detail_screen.dart';
// import 'Task2/actors_screen.dart';
// import 'Task1/function.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return MaterialApp(
        title: 'Flutter Training ',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        routes: approutes,
        initialRoute: '/');
  }
}
