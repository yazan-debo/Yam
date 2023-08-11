import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  int _rating = 0;

  Widget _buildStar(int index) {
    IconData iconData = index < _rating ? Icons.star : Icons.star_border;
    Color color = index < _rating ? Colors.orange : Colors.grey;

    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _rating = index + 1;
          });
        },
        child: Icon(
          iconData,
          color: color,
          size: 50,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    List<Widget> stars = [];
    for (int i = 0; i < 5; i++) {
      stars.add(_buildStar(i));
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
      child: Container(
        height: deviceSize.height/13,
        width: deviceSize.width/1.5,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color:const Color(0xFF9DA9F1)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 0, 20),
          child: Row(
            children: stars,
          ),
        ),
      ),
    );
  }
}