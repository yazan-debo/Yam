import 'package:flutter/material.dart';
import '../dummy_data.dart';
import 'NotificationScreen.dart';

class OneNotif extends StatelessWidget {
  const OneNotif({Key? key}) : super(key: key);
  static const routname = 'oneNotif';

  @override
  Widget build(BuildContext context) {
    final MealId=ModalRoute.of(context)!.settings.arguments as String;
    final selectmeal= Notifications.firstWhere((not) => not.id==MealId);
    final deviceSize = MediaQuery.of(context).size;

    return Container(
      decoration:const BoxDecoration(image: DecorationImage(image:AssetImage("assets/images/BackGround.jpg"),
          opacity:0.1)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar:AppBar(
          backgroundColor: Colors.transparent,
          elevation:0.1,
          shadowColor:Colors.white24,
          automaticallyImplyLeading: false,
          leading:Align(
            alignment: const AlignmentDirectional(0, 0.4),
            child: IconButton(
              onPressed:()=> Navigator.of(context).pushNamed(NotificationScreen.routname),
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
          flexibleSpace: FlexibleSpaceBar(
            title: Align(
              alignment:const AlignmentDirectional(0, 1),
              child:Text(
                selectmeal.user.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
        body:Column(
          children: [
            const SizedBox(height:30,),
            Stack(
              children: [
                const SizedBox(height:50,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width:deviceSize.width - 20,
                    height: deviceSize.height/2,
                    padding: const EdgeInsets.all(15),
                    child:Column(
                      children: [
                        const SizedBox(height: 20,),
                        Align(
                          alignment:AlignmentDirectional.topStart,
                          child: Container(
                            height: deviceSize.height/2.7 -(0.5*deviceSize.height/3),
                            width:deviceSize.width-30,
                            decoration:BoxDecoration(image:DecorationImage(image:AssetImage(selectmeal.Image),fit:BoxFit.fill),border: Border.all(
                              color:const Color(0xFFF4DB7E),
                              width:3,
                            ),),
                            //clipBehavior: Clip.antiAlias,
                            child:const  Text(''),
                          ),
                        ),
                        Text(selectmeal.discription,style:const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFE693E),
                          fontFamily: 'aldhabi',
                        ),),
                      ],
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFFF4DB7E).withOpacity(0.7),
                          const Color(0xFFF4DB7E),
                        ],
                        begin:Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius:BorderRadius.circular(15),
                    ),
                  ),
                ),
                Align(
                  alignment:AlignmentDirectional.topStart,
                  child: Container(
                    height:deviceSize.height/5,
                    width:deviceSize.width/5,
                    decoration:BoxDecoration(shape: BoxShape.circle,image:DecorationImage(image:AssetImage(selectmeal.user.imagUrl),),border: Border.all(
                      color:const Color(0xFFF4DB7E),
                      width:3,
                    ),),
                    //clipBehavior: Clip.antiAlias,
                    child: Text(''),
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
