import 'package:flutter/material.dart';

class Actor {
  String image;
  BioData bio;
  List<SocialData> social;
  Actor(this.image, this.bio, this.social);
}

class BioData {
  String nickName;
  String name;
  String industry;
  String country;
  BioData(this.nickName, this.name, this.industry, this.country);
}

class SocialData {
  IconData icon;
  String title;
  SocialData(this.icon, this.title);
}
