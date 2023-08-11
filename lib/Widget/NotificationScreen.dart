import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/notificationItem.dart';
import '../dummy_data.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);
  static const routname = 'Notif';


  @override
  Widget build(BuildContext context) {
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
                'Notification',
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
                const SizedBox(height: 12,),
                const Align(
                  alignment:Alignment.topLeft,
                  child: Text(
                    '  New',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'SegoeMarker',
                      color: Color(0xFF9DA9F1),
                      fontSize: 30,
                    ),
                  ),
                ),
                Container(
                  height:deviceSize.height/2,
                  width:deviceSize.width,
                  child: ListView(
                    padding:const EdgeInsets.all(25),
                    children:Notifications
                        .map(
                          (catdata) =>
                          notificationItem(catdata.id, catdata.name, catdata.discription,catdata.user,catdata.Image),
                    )
                        .toList(),
                  ),
                ),

                const Divider(color: Colors.grey,thickness:1,),

                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '  Oldest',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'SegoeMarker',
                      color: Color(0xFF9DA9F1),
                      fontSize: 30,
                    ),
                  ),
                ),
                Container(
                  height:deviceSize.height/2,
                  width:deviceSize.width,
                  child: ListView(
                    padding:const EdgeInsets.all(25),
                    children:Notifications
                        .map(
                          (catdata) =>
                          notificationItem(catdata.id, catdata.name, catdata.discription,catdata.user,catdata.Image),
                    )
                        .toList(),
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
