import 'package:flutter/material.dart';
import '../components/ChefRecipe.dart';
import '../dummy_data.dart';
import 'NewRecipe.dart';
import 'app_drawer.dart';


class MyRecipe extends StatefulWidget {
  const MyRecipe({Key? key}) : super(key: key);
  static const routename = '/myRecipe';

  @override
  _MyRecipeState createState() => _MyRecipeState();
}

class _MyRecipeState extends State<MyRecipe>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final Meal = DUMMY_Meals.where((meal) {
      return meal.chef.id=='1';
    }).toList();

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/BackGround.jpg"), opacity: 0.1)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.1,
          shadowColor: Colors.white24,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              setState(() {
                appdrawer.routename;
              });
            },
            //Navigator.of(context).pushNamed(appdrawer.routename),
            icon: const Icon(
              Icons.menu,
              size: 30,
              color: Color(0xff1A2239),
            ),
          ),
          actions: [
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
          flexibleSpace: FlexibleSpaceBar(
            title: Align(
              alignment: const AlignmentDirectional(0, 1),
              child: Text(
                Meal[0].chef.name,
                textAlign: TextAlign.center,
                style:const TextStyle(
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
        body: SafeArea(
          top: true,
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                        const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Row(
                          //mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(width: 15,),
                            ///Image of Chef
                            Align(
                              alignment:const AlignmentDirectional(0, 0),
                              child: Container(
                                width: deviceSize.width/3.5,
                                height: deviceSize.width/3.5,
                                clipBehavior: Clip.antiAlias,
                                decoration:BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:const Color(0xffFE693E),
                                    width: 3.0,
                                  ),
                                  image:const DecorationImage(image:AssetImage("assets/images/1.jpg")),
                                ),
                                child:const Text(''),
                              ),
                            ),

                            SizedBox(width:deviceSize.width/10,),

                          ///Icons( follow / num of Recipe)
                            Align(
                              alignment:const AlignmentDirectional(0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    //mainAxisSize: MainAxisSize.max,
                                    children:const [
                                      Icon(
                                        Icons.supervisor_account_sharp,
                                        color: Color(0xffFE693E),
                                        size: 40,
                                      ),
                                      Text(
                                        '1112',
                                        style:
                                        TextStyle(
                                          fontFamily: 'SegoeMarker',
                                          color: Color(0xff1A2239),
                                          fontSize: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width:deviceSize.width/20,),
                                  Text('|',style: TextStyle(fontSize:40,color: Colors.grey.withOpacity(0.7)),),
                                  SizedBox(width:deviceSize.width/20,),
                                  Row(
                                    //mainAxisSize: MainAxisSize.max,
                                    children:[
                                      const Icon(
                                        Icons.fastfood_rounded,
                                        color: Color(0xffFE693E),
                                        size: 40,
                                      ),
                                      Text(
                                        Meal.length.toString(),
                                        style:
                                        const TextStyle(
                                          fontFamily: 'SegoeMarker',
                                          color: Color(0xff1A2239),
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
                    ],
                  ),

                  ///title
                  const Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                      child: Text(
                        'My Recipe',
                        style: TextStyle(
                          fontFamily: 'SegoeMarker',
                          color: Color(0xffFE693E),
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),

                  ///Recipes
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 440,
                        width: double.infinity,
                        child: ListView.builder(
                            itemCount: Meal.length,
                            itemBuilder: (BuildContext c, int index) {
                              return Recipchef(
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
                            }),
                      ),
                      const SizedBox(height:25,),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          splashColor: const Color(0xFFF4DB7E),
          backgroundColor:const Color(0xffFE693E) ,
          onPressed:()=> Navigator.of(context).pushNamed(NewRecipe.routename),
          child: const Icon(Icons.add,color: Color(0xff1A2239),size: 40,),
        ),
      ),
    );
  }
}