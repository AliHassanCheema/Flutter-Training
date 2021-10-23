import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'Counter App',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
          child: Text(
        '$count',
        style: const TextStyle(color: Colors.white, fontSize: 60),
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            hoverColor: Colors.green[400],
            child: const Icon(Icons.plus_one),
          ),
          const SizedBox(width: 8),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count--;
              });
            },
            hoverColor: Colors.red[800],
            child: const Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(width: 8),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count = 0;
              });
            },
            hoverColor: Colors.blue[400],
            child: const Icon(Icons.clear),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
