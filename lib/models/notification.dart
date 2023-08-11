import '../models/User.dart';

class notification {
  final String id;
  final String name;
  final String discription;
  final User user;
  final String Image;

  notification({required this.Image, required this.id,required this.name,required this.discription,required this.user});
}
