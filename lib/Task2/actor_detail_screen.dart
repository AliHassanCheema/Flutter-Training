import 'package:flutter/material.dart';
import 'package:flutter_training/Task2/lib/bio_data.dart';
import 'package:flutter_training/Task2/lib/social_data.dart';
import 'package:flutter_training/Task2/model/actor_model.dart';

import 'lib/profile_pic.dart';

class ActorDetailScreen extends StatelessWidget {
  const ActorDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List<String> items = [];
    final item = ModalRoute.of(context)!.settings.arguments as Actor;
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        // IconButton(icon: icons.arrow_back, onPressed: (PopupRoute) {  },)
        title: Text("${item.bio.name}'s ID Card"),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfilePic(image: item.image),
          const Bio(text: 'Name', isHeading: true),
          Bio(text: item.bio.name, isHeading: false),
          const Bio(text: 'Industry', isHeading: true),
          Bio(text: item.bio.industry, isHeading: false),
          const Bio(text: 'Country', isHeading: true),
          Bio(text: item.bio.country, isHeading: false),
          // ListView.builder(
          //   itemBuilder: (context, index) {
          //     return Expanded(
          //       child: Social(myIcon: item.social.icon, text: item.social.title));
          //   },
          //   itemCount: items.length,
          // ),
        ],
      ),
    );
  }
}
