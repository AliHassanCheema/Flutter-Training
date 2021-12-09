import 'package:flutter/material.dart';
import 'package:flutter_training/routes.dart';

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
        title: 'Flutter Training',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        routes: approutes,
        initialRoute: '/');
  }
}
