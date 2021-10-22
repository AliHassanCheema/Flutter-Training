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
        backgroundColor: Colors.blue[500],
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Text(
          '$count',
          style: const TextStyle(fontSize: 36, color: Colors.blueGrey),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            hoverColor: Colors.green[400],
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: Icon(
              Icons.plus_one,
              color: Colors.blue[600],
            ),
            backgroundColor: Colors.blue[400],
          ),
          const SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            hoverColor: Colors.green[400],
            onPressed: () {
              setState(() {
                count--;
              });
            },
            child: Icon(
              Icons.exposure_minus_1,
              color: Colors.blue[600],
            ),
            backgroundColor: Colors.blue[400],
          ),
          const SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            hoverColor: Colors.green[400],
            onPressed: () {
              setState(() {
                count = 0;
              });
            },
            child: Icon(
              Icons.close_sharp,
              color: Colors.blue[600],
            ),
            backgroundColor: Colors.blue[400],
          ),
        ],
      ),
    );
  }
}
