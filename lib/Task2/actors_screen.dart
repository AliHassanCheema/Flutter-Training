import 'package:flutter/material.dart';

import 'model/actor_model.dart';

class ActorsScreen extends StatelessWidget {
  const ActorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Actor> items = [
      Actor(
        'assets/DSC_0030.JPG',
        BioData('Ali', 'Hollywood', 'Pakistan'),
        [SocialData(Icons.facebook, 'facebook.com')],
      ),
      Actor(
        'assets/DSC_0030.JPG',
        BioData('Kashif', 'Hollywood', 'Pakistan'),
        [SocialData(Icons.facebook, 'facebook.com')],
      ),
      Actor(
        'assets/DSC_0030.JPG',
        BioData('Usama', 'Hollywood', 'Pakistan'),
        [SocialData(Icons.facebook, 'facebook.com')],
      ),
      Actor(
        'assets/DSC_0030.JPG',
        BioData('Salman', 'Hollywood', 'Pakistan'),
        [SocialData(Icons.facebook, 'facebook.com')],
      ),
      Actor(
        'assets/DSC_0030.JPG',
        BioData('Zeeshan', 'Hollywood', 'Spain'),
        [SocialData(Icons.facebook, 'facebook.com')],
      ),
      Actor(
        'assets/DSC_0030.JPG',
        BioData('Nisar', 'Hollywood', 'Italy'),
        [SocialData(Icons.facebook, 'facebook.com')],
      ),
      Actor(
        'assets/DSC_0030.JPG',
        BioData('Farid', 'Hollywood', 'US'),
        [SocialData(Icons.facebook, 'facebook.com')],
      ),
      Actor(
        'assets/DSC_0030.JPG',
        BioData('Sufyan', 'Hollywood', 'UK'),
        [SocialData(Icons.facebook, 'facebook.com')],
      ),
    ];
    // List<String> items = ['Ali', 'Kashif'];

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
                  print(items[index].bio.country);
                  Navigator.pushNamed(context, '/actor_detail',
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
                          style: TextStyle(fontSize: 20),
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
