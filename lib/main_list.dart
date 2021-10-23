// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MainList extends StatelessWidget {
  MainList({Key? key}) : super(key: key);
  final List<String> items = ['Task 1', 'Task 2', 'Task 3', 'Task 4', 'Task 5'];
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
                child: Text(items[index]),
                onTap: () {
                  switch (items[index]) {
                    case 'Task 1':
                      Navigator.pushNamed(context, '/task1_id_card',
                          arguments: items[index]);
                      break;

                    case 'Task 2':
                      Navigator.pushNamed(context, '/task2_actor_detail',
                          arguments: items[index]);
                      break;

                    case 'Task 3':
                      Navigator.pushNamed(context, '/task3_counter',
                          arguments: items[index]);
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
