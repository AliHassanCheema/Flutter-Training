import 'package:flutter/cupertino.dart';
import 'package:flutter_training/Task1/id_card.dart';
// import 'package:flutter_training/task5/whatsapp_home_vu.dart';
import 'Task1/id_card.dart';
import 'Task2/actor_detail_screen.dart';
import 'Task2/actors_screen.dart';
import 'Task3/counterapp.dart';
import 'Task4/employee_detail_view.dart';
import 'Task4/employee_view.dart';
import 'main_list.dart';
import 'task5/whatsapp_home_vu.dart';
import 'task6/form_practice.dart';
// import 'main_list.dart';

Map<String, WidgetBuilder> approutes = {
  '/': (context) => MainList(),
  '/task1_id_card': (context) => const MyID(),
  '/task2_actor_detail': (context) => const ActorsScreen(),
  '/task3_counter': (context) => const CounterApp(),
  '/task4_mvvm': (context) => const EmployeesScreen(),
  '/actor_detail_screen': (context) => const ActorDetailScreen(),
  '/employee_detail_screen': (context) => const EmloyeeDetailScreen(),
  '/FormPractice': (context) => const FormPractice(),
  '/WhatsappHomeScreen': (context) => const WhatsappHomeScreen(),
};
