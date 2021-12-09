import 'package:flutter/material.dart';
import 'package:flutter_training/Task2/lib/bio_data.dart';
import 'package:flutter_training/Task2/lib/social_data.dart';
import 'package:flutter_training/Task2/model/actor_model.dart';
import 'lib/profile_pic.dart';

class ActorDetailScreen extends StatelessWidget {
  const ActorDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Actor;
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text(
          "${item.bio.nickName}'s ID Card",
          style: const TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfilePic(image: item.image),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Divider(
                color: Colors.white,
              ),
            ),
            const Bio(text: 'Name', isHeading: true),
            Bio(text: item.bio.name, isHeading: false),
            const Bio(text: 'Industry', isHeading: true),
            Bio(text: item.bio.industry, isHeading: false),
            const Bio(text: 'Country', isHeading: true),
            Bio(text: item.bio.country, isHeading: false),
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Social(
                      myIcon: item.social[index].icon,
                      title: item.social[index].title);
                },
                itemCount: item.social.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
