import 'package:flutter/material.dart';
import '../Widget/OneRecipe.dart';
import '../models/User.dart';
import '../models/recipe.dart';

class RecipFav extends StatelessWidget {
  final String id;
  final String name;
  final User chef;
  final Category category;
  final String imgurl;
  final int duration;
  final Complexity complexity;
  final double price;
  final int watchers;

  RecipFav({
    required this.id,
    required this.category,
    required this.name,
    required this.chef,
    required this.imgurl,
    required this.duration,
    required this.complexity,
    required this.price,
    required this.watchers,
  });

  String get complexitytext {
    switch (complexity) {
      case Complexity.Easy:
        return 'Easy';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      case Complexity.Medium:
        return 'Medium';
        break;
      default :
        return 'Unknown';
        break;
    }
  }

  String get categoryText {
    switch (category) {
      case Category.Vegetarian:
        return 'Vegetarian';
        break;
      case Category.Juice:
        return 'Juice';
        break;
      case Category.Sweet:
        return 'Sweet';
        break;
      case Category.Unportunate:
        return 'Unportunate';
        break;
      default :
        return 'Unknown';
        break;
    }
  }

  void selectmeal(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(OneRecipe.routename,arguments: id,);
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return InkWell(
      onTap:()=> selectmeal(context),
      child: Align(
        alignment: const AlignmentDirectional(0, 0),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: deviceSize.width,
              height: deviceSize.width-50,
              decoration: BoxDecoration(
                color:const Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      ///Image Recipe
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Image.asset(
                          imgurl,
                          width:deviceSize.width,
                          height:deviceSize.width/1.6,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children:[

                          ///Category
                          Align(
                            alignment: const AlignmentDirectional(-1, 0),
                            child: Container(
                              width: deviceSize.width/4,
                              height: deviceSize.width/10,
                              decoration: const BoxDecoration(
                                color: Color(0xFFF4DB7E),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child:Align(
                                alignment: const AlignmentDirectional(0, 0),
                                child: Text(
                                  categoryText,
                                  textAlign: TextAlign.center,
                                  style:const TextStyle(
                                    fontFamily: 'aldhabi',
                                    color: Color(0xFFFE693E),
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          ///Chef Name
                          Align(
                            alignment:const AlignmentDirectional(1, 1),
                            child: Padding(
                              padding:const EdgeInsetsDirectional.fromSTEB(0, 210, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Align(
                                    alignment:const AlignmentDirectional(1, 1),
                                    child: Stack(
                                      alignment:const AlignmentDirectional(1, 0),
                                      children: [
                                        Align(
                                          alignment:const AlignmentDirectional(0, 0),
                                          child: Padding(
                                            padding:const EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 10, 0),
                                            child: Container(
                                              width: deviceSize.width/2.7,
                                              height:deviceSize.width/10,
                                              decoration:const BoxDecoration(
                                                color: Color(0xFFF1F4F6),
                                                shape: BoxShape.rectangle,
                                              ),
                                              alignment:const AlignmentDirectional(0, 0),
                                              child: Align(
                                                alignment:
                                                const AlignmentDirectional(-1, 0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 0, 0),
                                                  child: Text(
                                                    chef.name,
                                                    textAlign: TextAlign.center,
                                                    style:
                                                    const TextStyle(
                                                      fontFamily: 'aldhabi',
                                                      color:
                                                      Color(0xFFF4DB7E),
                                                      fontSize: 30,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:const AlignmentDirectional(1, 0.5),
                                          child: Container(
                                            width: deviceSize.width/6.5,
                                            height: deviceSize.width/6.5,
                                            clipBehavior: Clip.antiAlias,
                                            decoration:const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              'assets/images/1.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ///Name Of Recipe
                      Align(
                        alignment: const AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 10),
                          child: Text(
                            name,
                            textAlign: TextAlign.start,
                            style:const TextStyle(
                              fontFamily: 'SegoeMarker',
                              color: Color(0xFF1A2239),
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),

                      ///Watchers
                      Align(
                        alignment:const AlignmentDirectional(0, 0),
                        child: Padding(
                          padding:const EdgeInsetsDirectional.fromSTEB(0, 10, 20, 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                watchers.toString(),
                                style: TextStyle(
                                  color:const Color(0xff1A2239).withOpacity(0.5),
                                  fontSize: 20,
                                ),
                              ),
                              Icon(
                                Icons.remove_red_eye_outlined,
                                color:const Color(0xff1A2239).withOpacity(0.5),
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                   Divider(
                    thickness: 1,
                    color: const Color(0xff1A2239).withOpacity(0.5),
                  ),

                  ///Icons (duration / Complexity / Price)
                  Align(
                    alignment:const AlignmentDirectional(0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Icon(
                              Icons.timer_sharp,
                              color: Color(0xFFF4DB7E),
                              size: 35,
                            ),
                            Text(
                              duration.toString(),
                              style:
                              const TextStyle(
                                fontFamily: 'SegoeMarker',
                                color: Color(0xFFF4DB7E),
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Icon(
                              Icons.fmd_good,
                              color: Color(0xFF9DA9F1),
                              size: 35,
                            ),
                            Text(
                              complexitytext,
                              style:
                              const TextStyle(
                                fontFamily: 'SegoeMarker',
                                color: Color(0xFF9DA9F1),
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Icon(
                              Icons.price_check_outlined,
                              color: Color(0xFFF4DB7E),
                              size: 35,
                            ),
                            Text(
                              price.toString(),
                              style:
                              const TextStyle(
                                fontFamily: 'SegoeMarker',
                                color: Color(0xFFF4DB7E),
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
