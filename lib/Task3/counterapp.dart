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
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.white30,
        title: const Text(
          'Counter App',
          style: TextStyle(color: Colors.blueGrey),
        ),
      ),
      body: Center(
          child: Text(
        '$count',
        style: const TextStyle(color: Colors.blueGrey, fontSize: 60),
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'btn1',
            onPressed: () {
              setState(() {
                count++;
              });
            },
            hoverColor: Colors.green[400],
            child: const Icon(
              Icons.plus_one_rounded,
              color: Colors.blueGrey,
            ),
            backgroundColor: Colors.grey[800],
          ),
          const SizedBox(width: 8),
          FloatingActionButton(
            heroTag: 'btn2',
            onPressed: () {
              setState(() {
                count--;
              });
            },
            hoverColor: Colors.blue[800],
            child: const Icon(
              Icons.exposure_minus_1_rounded,
              color: Colors.blueGrey,
            ),
            backgroundColor: Colors.grey[800],
          ),
          const SizedBox(width: 8),
          FloatingActionButton(
            heroTag: 'btn3',
            onPressed: () {
              setState(() {
                count = 0;
              });
            },
            hoverColor: Colors.red[400],
            child: const Icon(
              Icons.clear,
              color: Colors.blueGrey,
            ),
            backgroundColor: Colors.grey[800],
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
