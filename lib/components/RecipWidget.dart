import 'package:flutter/material.dart';
import '../models/User.dart';
import '../models/recipe.dart';

class RecipWidget extends StatelessWidget {
  final PageController pageController;
  final int index;
  final String id;
  final String name;
  final User chef;
  final Category category;
  final String imgurl;
  final int duration;
  final Complexity complexity;
  final double price;
  final int watchers;

  RecipWidget({
    required this.index,
    required this.id,
    required this.category,
    required this.name,
    required this.chef,
    required this.imgurl,
    required this.duration,
    required this.complexity,
    required this.price,
    required this.watchers,
    required this.pageController,
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
    //Navigator.of(ctx).pushNamed(MealDetails.routname,arguments: id,);

  }

  _recipeSelector(int? index){
    InkWell(
      onTap:()=> {},
      child: AnimatedBuilder(
        animation:pageController,
        builder: (BuildContext c, Widget? widget) {
          double value = 1;
          return Center(
            child: SizedBox(
              height: Curves.easeInOut.transform(value) * 500.0,
              width: Curves.easeInOut.transform(value) * 400.0,
              child: widget,
            ),
          );
        },
        child: Align(
          alignment: const AlignmentDirectional(1, 0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
            child: Container(
              width: 370,
              height: 440,
              decoration: BoxDecoration(
                color:const Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Image.asset(
                          imgurl,
                          width: 370,
                          height: 293,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children:[
                          Align(
                            alignment: const AlignmentDirectional(-1, 0),
                            child: Container(
                              width: 108,
                              height: 38,
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
                                              width: 178,
                                              height: 39,
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
                                          alignment:const AlignmentDirectional(1, 0),
                                          child: Container(
                                            width: 70,
                                            height: 70,
                                            clipBehavior: Clip.antiAlias,
                                            decoration:const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              'assets/images/rec.jpg',
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
                      Align(
                        alignment: const AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 10),
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
                      Align(
                        alignment:const AlignmentDirectional(0, 0),
                        child: Padding(
                          padding:const EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                watchers.toString(),
                                style: const TextStyle(
                                  color:Color(0xff1A2239),
                                  fontSize: 23,
                                ),
                              ),
                              const Icon(
                                Icons.remove_red_eye_outlined,
                                color: Color(0xff1A2239),
                                size: 23,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Color(0xff1A2239),
                  ),
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
  @override
  Widget build(BuildContext context) {
    return _recipeSelector(index);
  }
}
