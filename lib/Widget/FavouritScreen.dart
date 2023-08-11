import 'package:flutter/material.dart';
import '../components/RecipeFav.dart';
import '../dummy_data.dart';
import 'Chef_Drawer.dart';


class FavouritScreen extends StatefulWidget {
  const FavouritScreen({Key? key}) : super(key: key);
  static const routname = 'fav';


  @override
  State<FavouritScreen> createState() => _FavouritScreenState();
}

class _FavouritScreenState extends State<FavouritScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final Meal = DUMMY_Meals.where((meal) {
      return meal.isfav;
    }).toList();
    return Container(
      decoration:const BoxDecoration(image: DecorationImage(image:AssetImage("assets/images/BackGround.jpg"),
          opacity:0.1)),
      child: Scaffold(
        drawer: chefdrawer(),
        backgroundColor: Colors.transparent,
        appBar:AppBar(
          backgroundColor: Colors.transparent,
          elevation:0.1,
          shadowColor:Colors.white24,
          automaticallyImplyLeading: false,
          leading:Align(
            alignment: const AlignmentDirectional(0, 0.4),
            child: IconButton(
              onPressed: () {},
              //Navigator.of(context).pushNamed(appdrawer.routename),
              icon:const Icon(
                Icons.arrow_back,
                size: 30,
                color: Color(0xff1A2239),
              ),),
          ),
          actions:[
            SizedBox(
              height:deviceSize.height/6,
              width: deviceSize.height/6,
              child: Align(
                heightFactor:deviceSize.height/5,
                alignment: const AlignmentDirectional(1, 0),
                child: Image.asset("assets/images/Asset 1.png"),
              ),
            ),
          ],
          flexibleSpace: const FlexibleSpaceBar(
            title: Align(
              alignment: AlignmentDirectional(0, 1),
              child:Text(
                'Favourite',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SegoeMarker',
                  color: Color(0xFF1A2239),
                  fontSize: 40,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          toolbarHeight: 117,
        ),
        body:ListView.builder(
         itemBuilder: (ctx, index){
             return RecipFav(
               id: Meal[index].id,
               category: Meal[index].category,
               name: Meal[index].name,
               chef: Meal[index].chef,
               imgurl: Meal[index].imgurl,
               duration: Meal[index].duration,
               complexity: Meal[index].complexity,
               price: Meal[index].price,
               watchers: Meal[index].watchers,
               );
         },
            itemCount: Meal.length,
        ),
      ),
    );
  }
}
