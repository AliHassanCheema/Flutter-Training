import 'package:flutter/material.dart';

void main() {
  runApp(const MyID());
}

class MyID extends StatelessWidget {
  const MyID({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Training ',
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
          child: Text("Ali Hassan ID card",
              style: (TextStyle(color: Colors.white))),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: ClipRRect(
              child: Image.asset(
                'assets/DSC_0030.JPG',
                height: 160,
                width: 160,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(
            height: 30,
          ),
          showData('Name', true),
          showData('ALi Hassan', false),
          showData('Designation', true),
          showData('Software Engineer', false),
          showData('Company', true),
          showData('CHI', false),
          rowData('+92 302 3502021', Icons.phone, true),
          rowData('ahcheema12@gmail.com', Icons.email, false),
        ]),
      ),
    );
  }
}

Padding showData(String text, bool isHeading) {
  return Padding(
    padding: EdgeInsets.only(bottom: isHeading ? 8 : 20),
    child: Text(
      text,
      style: TextStyle(
          color: isHeading ? Colors.grey : Colors.amber,
          fontSize: isHeading ? 16 : 20,
          letterSpacing: isHeading ? 1 : 0,
          fontWeight: isHeading ? FontWeight.normal : FontWeight.bold),
    ),
  );
}

Padding rowData(String text, IconData myIcon, bool isLetterSpacing) {
  return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Icon(
            myIcon,
            color: Colors.grey,
          ),
          const SizedBox(width: 20),
          Text(
            text,
            style: TextStyle(
                color: Colors.amber,
                fontSize: 20,
                letterSpacing: isLetterSpacing ? 1 : 0),
          )
        ],
      ));
}
  // const Text('Name',
          //     style: TextStyle(
          //         color: Colors.grey, fontSize: 16, letterSpacing: 1)),
          // const SizedBox(
          //   height: 10,
          // ),
          // const Text('Ali Hassan',
          //     style: TextStyle(
          //         color: Colors.amber,
          //         fontSize: 24,
          //         fontWeight: FontWeight.bold)),
          // const SizedBox(
          //   height: 10,
          // ),
          // const Text('Designation',
          //     style: TextStyle(
          //         color: Colors.grey, fontSize: 16, letterSpacing: 1)),
          // const SizedBox(
          //   height: 10,
          // ),
          // const Text('Software Engineer',
          //     style: TextStyle(
          //         color: Colors.amber,
          //         fontSize: 24,
          //         fontWeight: FontWeight.bold)),
          // const SizedBox(
          //   height: 10,
          // ),
          // const Text('Company',
          //     style: TextStyle(
          //         color: Colors.grey, fontSize: 16, letterSpacing: 1)),
          // const SizedBox(
          //   height: 10,
          // ),
          // const Text('CHI',
          //     style: TextStyle(
          //         color: Colors.amber,
          //         fontSize: 24,
          //         fontWeight: FontWeight.bold)),
          // const SizedBox(
          //   height: 10,
          // ),
          // Row(
          //   children: const [
          //     Icon(
          //       Icons.phone,
          //       color: Colors.grey,
          //     ),
          //     SizedBox(width: 10),
          //     Text(' +92 302 3502021',
          //         style: TextStyle(
          //             color: Colors.amber, fontSize: 20, letterSpacing: 1)),
          //   ],
          // ),
          // const SizedBox(height: 10),
          // Row(
          //   children: const [
          //     Icon(
          //       Icons.email,
          //       color: Colors.grey,
          //     ),
          //     SizedBox(width: 16),
          //     Text('ahcheema12@gmail.com',
          //         style: TextStyle(color: Colors.amber, fontSize: 20))
          //   ],
          // )