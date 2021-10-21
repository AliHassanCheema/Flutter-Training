import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter_training/Task2/actors_screen.dart';

import 'Task2/actor_detail_screen.dart';

Map<String, WidgetBuilder> approutes = {
  '/': (context) => const ActorsScreen(),
  '/actor_detail': (context) => const ActorDetailScreen(),
};
