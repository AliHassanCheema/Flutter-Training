import 'package:flutter/cupertino.dart';

class Actor {
  String image;
  BioData bio;
  List<SocialData> social;
  Actor(this.image, this.bio, this.social);
}

class BioData {
  String name;
  String industry;
  String country;
  BioData(this.name, this.industry, this.country);
}

class SocialData {
  IconData icon;
  String title;
  SocialData(this.icon, this.title);
}
