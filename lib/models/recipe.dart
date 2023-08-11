import 'package:project_2/models/ingradient.dart';
import 'package:project_2/models/step.dart';

import 'User.dart';

enum Complexity {
 Hard,
 Medium,
 Easy,
}
enum Category {
Vegetarian,
  Sweet,
  Unportunate,
  Juice
}
enum Rate {
  one,
  two,
  three,
  four,
  five
}

class recipe {
  final String id;
  final String name;
  final User chef;
  final List<step> steps;
  final String tips;
  final Category category;
  final String imgurl;
  final List<ingradient> ingredients;
  final int duration;
  final Complexity complexity;
  final double price;
  final Rate rate;
  final int watchers;
  final bool isfav;
  final int like;


  const recipe({
    required this.id,
    required this.category,
    required this.name,
    required this.chef,
    required this.imgurl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.price,
    required this.tips,
    required this.rate,
    required this.watchers,
    required this.isfav,
    required this.like,


  });
}
