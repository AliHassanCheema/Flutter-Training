import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 1 ',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Flutter training'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Center(
          child: Text("Ali ID card", style: (TextStyle(color: Colors.white))),
        ),
      ),
      body:
          // const Padding(
          // padding:EdgeInsets.fromLTRB(10, 16, 10,10) ,
          // ),
          // CrossAxisAlignment:,
          Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: ClipRRect(
              child: Image.asset(
                'assets/DSC_0002.JPG',
                height: 160,
                width: 160,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text('Name',
              style: TextStyle(
                  color: Colors.grey, fontSize: 16, letterSpacing: 1)),
          const SizedBox(
            height: 10,
          ),
          const Text('Ali Hassan',
              style: TextStyle(color: Colors.amber, fontSize: 24)),
          const SizedBox(
            height: 15,
          ),
          const Text('Designation',
              style: TextStyle(
                  color: Colors.grey, fontSize: 16, letterSpacing: 1)),
          const SizedBox(
            height: 10,
          ),
          const Text('Software Engineer',
              style: TextStyle(color: Colors.amber, fontSize: 24)),
          const SizedBox(
            height: 15,
          ),
          const Text('Company',
              style: TextStyle(
                  color: Colors.grey, fontSize: 16, letterSpacing: 1)),
          const SizedBox(
            height: 10,
          ),
          const Text('CHI',
              style: TextStyle(color: Colors.amber, fontSize: 24)),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              Icon(
                Icons.phone,
                color: Colors.grey,
              ),
              SizedBox(width: 10),
              Text('+92 302 3502021', style: TextStyle(color: Colors.amber)),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: const [
              Icon(
                Icons.email,
                color: Colors.grey,
              ),
              SizedBox(width: 16),
              Text('ahcheema12@gmail.com',
                  style: TextStyle(color: Colors.amber))
            ],
          )
        ]),
      ),
    );
  }
}
