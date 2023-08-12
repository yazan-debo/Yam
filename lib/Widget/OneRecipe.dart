import 'package:flutter/material.dart';
import '../components/ImageShow.dart';
import '../components/Star_Rate.dart';
import '../dummy_data.dart';
import 'FavouritScreen.dart';
import '../components/Steep.dart';



class OneRecipe extends StatelessWidget {
  const OneRecipe({Key? key}) : super(key: key);
  static const routename = 'oneRecipe';


  @override
  Widget build(BuildContext context) {

    final MealId=ModalRoute.of(context)!.settings.arguments as String;
    final selectmeal= DUMMY_Meals.firstWhere((meal) => meal.id==MealId);
    final deviceSize = MediaQuery.of(context).size;


    return Container(
      decoration:const BoxDecoration(image: DecorationImage(image:AssetImage("assets/images/BackGround.jpg"),
          opacity:0.1)),
      child: Scaffold(
        //drawer: chefdrawer(),
        backgroundColor: Colors.transparent,
        appBar:AppBar(
          backgroundColor: Colors.transparent,
          elevation:0.1,
          shadowColor:Colors.white24,
          automaticallyImplyLeading: false,
          leading:Align(
            alignment: const AlignmentDirectional(0, 0.4),
            child: IconButton(
              onPressed: ()=> Navigator.of(context).pushNamed(FavouritScreen.routname),
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
        body:ListView(
          children:[
            Column(
            children: [
              ///Image
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
                      selectmeal.imgurl,
                      width:deviceSize.width,
                      height:deviceSize.width/1.6,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ///category & chef name
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              (selectmeal.category).toString(),
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
                          padding:const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
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
                                          width: deviceSize.width/2.5,
                                          height:deviceSize.width/12,
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
                                                selectmeal.chef.name,
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
                                          selectmeal.chef.imagUrl,
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

              ///Tips
              Container(
                color: Color(0xFFF4DB7E).withOpacity(0.7),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                height: deviceSize.width/10,
                width:deviceSize.width,
                child: Row(
                  children: [
                    const Text('Tips:',style:TextStyle(fontFamily: 'SegoeMarker',fontSize: 25,color: Color(0xffFE693E))),
                    Text(selectmeal.tips,style:const TextStyle(fontFamily: 'SegoeMarker',fontSize: 20,color: Color(0xff1A2239))),

                  ],
                ),
              ),

              ///Ingredient
              const Align(
                alignment: AlignmentDirectional(-1, 0),
                child: Text("  Ingredient",style:TextStyle(color: Color(0xff1A2239),fontFamily: 'SegoeMarker',fontSize:35),),
              ),
              Container(
                decoration: BoxDecoration(
                  ///color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                height:deviceSize.width/3,
                width:deviceSize.width,
                child: ListView.builder(
                  itemBuilder: (ctx,index)=> Card(
                    color:const Color.fromARGB(255, 96, 189, 175),
                    //Color.fromARGB(255, 248, 138, 175),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      child: Text(selectmeal.ingredients[index].name),
                    ),
                  ),
                  itemCount:selectmeal.ingredients.length,
                ),
              ),

              ///Show
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                height:deviceSize.width/1.5,
                width:deviceSize.width,
                child:ListView.builder(
                  itemBuilder: (ctx,index){
                    return ImageShow(
                      image:selectmeal.ingredients[index].advert.imgurl,
                    );
                  },
                  itemCount:selectmeal.ingredients.length,
                ),
              ),
              /*Stack(
                children: [
                  ///Image show
                  Center(
                    child: ClipRRect(
                      child: Column(
                        children: [
                          Image.asset(
                            selectmeal.ingredients[index].advert.imgurl,
                            width:deviceSize.width/1.2,
                            height:deviceSize.width/2,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ///Inform
                  Padding(
                    padding:EdgeInsets.fromLTRB(0,deviceSize.width/2.3, 0, 0),
                    child: Center(
                      child: Align(
                        alignment:const AlignmentDirectional(0, 0),
                        child: Container(
                          width: deviceSize.width/3.2,
                          height:deviceSize.width/12,
                          decoration:BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFF4DB7E).withOpacity(0.3),
                                const Color(0xFFF4DB7E),
                              ],
                              begin:Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            //color: const Color(0xFFF4DB7E).withOpacity(0.7),
                            shape: BoxShape.rectangle,
                          ),
                          alignment:const AlignmentDirectional(0, 0),
                          child: Align(
                            alignment:
                            const AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional
                                  .fromSTEB(10, 0, 0, 0),
                              child: InkWell(
                                onTap: ()=>{
                                  /// تابع تقديم البلاغ في الداتا بيز
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:const[
                                    Icon(Icons.warning_amber_rounded,color: Colors.red,size: 35,),
                                    Text('Inform',style:TextStyle(color:Colors.red,fontSize: 30)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),*/

              ///How To Prepare
              const Align(
                alignment: AlignmentDirectional(-1, 0),
                child: Text("  How To Prepare",style:TextStyle(color: Color(0xff1A2239),fontFamily: 'SegoeMarker',fontSize:35),),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                height:deviceSize.width/1.5,
                width:deviceSize.width,
                child: ListView.builder(
                  itemBuilder: (ctx,index){
                 return Steep(
                    id:selectmeal.steps[index].id,
                     description:selectmeal.steps[index].step_discription,
                     image:selectmeal.steps[index].imgurl,
                  );
                 },
                  itemCount:selectmeal.steps.length,
                ),
              ),

               Divider(color: Colors.grey.withOpacity(0.5),thickness:1.5,),

              ///comment & Favourit
              Container(
                height: deviceSize.height/10,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  border: Border.all(color:Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  alignment:const AlignmentDirectional(0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:[
                      IconButton(onPressed: (){}, icon:const Icon(
                        Icons.comment,
                        color: Colors.grey,
                        size: 40,
                      ),),

                      IconButton(onPressed: (){}, icon:Icon(
                        Icons.star,
                        color: selectmeal.isfav? Colors.orange: Colors.grey,
                        size: 40,
                      ),),
                    ],
                  ),
                ),
              ),

              //Divider(color: Colors.grey.withOpacity(0.5),thickness:1.5,),

              ///Rating
              const Align(
                alignment: AlignmentDirectional(-1, 0),
                child: Text("  Choose a Rating",style:TextStyle(color: Color(0xffFE693E),fontFamily: 'SegoeMarker',fontSize:35),),
              ),
               Align(
                alignment:const AlignmentDirectional(0, 0),
                child: Column(
                  children: [

                    StarRating(),
                    ElevatedButton(
                   //   color:const Color(0xffFE693E),
                      onPressed: () {
                        /// تابع حفظ التقييم في الداتا بيز
                        },
                      child:const Text(
                        'Submit',style: TextStyle(color:Color(0xff1A2239),fontFamily: 'SegoeMarker',fontSize: 25 ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                  ],
                ),

                
              ),
            ],
          ),
          ],
        ),
      ),
    );
  }
}
