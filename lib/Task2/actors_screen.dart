import 'package:flutter/material.dart';

import 'model/actor_model.dart';

class ActorsScreen extends StatelessWidget {
  const ActorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Actor> items = [
      Actor(
        'assets/DSC_0030.JPG',
        BioData('Ali', 'Ali Hassan', 'Hollywood', 'Pakistan'),
        [
          SocialData(Icons.facebook, 'facebook.com/AliHassan'),
          SocialData(Icons.email_rounded, 'ahcheema12@gmail.com'),
        ],
      ),
      Actor(
        'assets/actor2.jpg',
        BioData('Kashif', 'Kashif Mehmood', 'Hollywood', 'Pakistan'),
        [SocialData(Icons.facebook, 'facebook.com/M Kashif')],
      ),
      Actor(
        'assets/Actor3.jpg',
        BioData('Usama', 'Usama Ali', 'Hollywood', 'Pakistan'),
        [SocialData(Icons.facebook, 'facebook.com/UsamaAli')],
      ),
      Actor(
        'assets/Actor4.jpg',
        BioData('Salman', 'Salman Khan', 'Hollywood', 'Pakistan'),
        [SocialData(Icons.email, 'salmankhan@gmail.com')],
      ),
      Actor(
        'assets/Actor5.jpg',
        BioData('Zeeshan', 'Zeeshan Ali', 'Hollywood', 'Spain'),
        [SocialData(Icons.email_rounded, 'ZeeshanAli@gmail.com')],
      ),
      Actor(
        'assets/Actor6.jpg',
        BioData('Nisar', 'Nisar Khan', 'Hollywood', 'Italy'),
        [SocialData(Icons.email_rounded, 'Nisar@gmail.com')],
      ),
      Actor(
        'assets/actor7.jpg',
        BioData('Farid', 'Farid Ullah', 'Hollywood', 'US'),
        [SocialData(Icons.email_rounded, 'Farid@gmail.com')],
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text(
          "Actors",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              color: Colors.blue[500],
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/actor_detail_screen',
                      arguments: items[index]);
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          items[index].image,
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          items[index].bio.name,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios_outlined,
                          color: Colors.white),
                    ],
                  ),
                ),
              ));
        },
        itemCount: items.length,
      ),
    );
  }
}
