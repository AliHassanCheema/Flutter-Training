// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MainList extends StatelessWidget {
  MainList({Key? key}) : super(key: key);
  final List<String> items = [
    'Task 1',
    'Task 2',
    'Task 3',
    'Task 4',
    'Task 5',
    'Task 6'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.white30,
        title: const Text(
          'Flutter Training',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blue[500],
            child: InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    items[index],
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
                onTap: () {
                  switch (items[index]) {
                    case 'Task 1':
                      Navigator.pushNamed(
                        context,
                        '/task1_id_card',
                      );
                      break;

                    case 'Task 2':
                      Navigator.pushNamed(
                        context,
                        '/task2_actor_detail',
                      );
                      break;

                    case 'Task 3':
                      Navigator.pushNamed(
                        context,
                        '/task3_counter',
                      );
                      break;
                    case 'Task 4':
                      Navigator.pushNamed(
                        context,
                        '/task4_mvvm',
                      );
                      break;
                    case 'Task 5':
                      Navigator.pushNamed(
                        context,
                        '/WhatsappHomeScreen',
                      );
                      break;
                    case 'Task 6':
                      Navigator.pushNamed(
                        context,
                        '/FormPractice',
                      );
                      break;
                    default:
                      print('Select any Task');
                  }
                }),
          );
        },
        itemCount: items.length,
      ),
    );
  }
}
