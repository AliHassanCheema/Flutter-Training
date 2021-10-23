import 'package:flutter/cupertino.dart';
// import 'package:flutter_training/Task2/actors_screen.dart';
// import 'package:flutter_training/Task5/employee_detail_view.dart';
// import 'package:flutter_training/Task4/lib/employee_screen.dart';

import 'Task1/function.dart';
import 'Task2/actor_detail_screen.dart';
import 'Task2/actors_screen.dart';
import 'Task3/counterapp.dart';
import 'main_list.dart';

Map<String, WidgetBuilder> approutes = {
  '/': (context) => MainList(),
  '/task1_id_card': (context) => const MyID(),
  '/task2_actor_detail': (context) => const ActorsScreen(),
  '/task3_counter': (context) => const CounterApp(),
  '/actor_detail_screen': (context) => const ActorDetailScreen(),
};
