import 'package:flutter/material.dart';


class Steep extends StatelessWidget {
  final String id;
  final String description;
  final String image;

Steep({
    required this.id,
    required this.description,
    required this.image
 });

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Row(
      mainAxisSize: MainAxisSize.min,
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
        ///number & description
        Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///number
            Stack(
              alignment: Alignment.topLeft,
              children:[
                Container(
                width: deviceSize.width/3.2,
                height:deviceSize.width/12,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xffFE693E).withOpacity(0.3),
                      const Color(0xffFE693E),
                    ],
                    begin:Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  //color: Color(0xffFE693E),
                  shape: BoxShape.circle,
                ),
                child:Center(child: Text(id,style: const TextStyle(color: Color(0xff1A2239),fontFamily: 'SegoeMarker',fontSize: 30),),),
              ),

    ],
            ),
            ///description
            SizedBox(
              height: deviceSize.width/2,
                width:deviceSize.width/2 ,
                child: Text(description,style:const TextStyle(
                    color: Color(0xffFE693E),fontSize:35,fontFamily: 'aldhabi'),)),
          ],
        ),
        ///Image
        Center(
          child: ClipRRect(
            child: Image.asset(
              image,
              width:deviceSize.width/3,
              height:deviceSize.width/3,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );

  }


}