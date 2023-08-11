import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widget/OneNotification.dart';
import '../models/User.dart';

class notificationItem extends StatelessWidget {
  final String id;
  final String name;
  final String discription;
  final User user;
  final String Image;

  void selectscreen(BuildContext ctx){
    Navigator.of(ctx).pushNamed(OneNotif.routname,arguments: id,);
  }

  notificationItem( this.id, this.name, this.discription, this.user,this.Image);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return InkWell(
      onTap: ()=>selectscreen(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius:BorderRadius.circular(15),
      child: Row(
        children: [
          Align(
            alignment:AlignmentDirectional.center,
            child: Container(
              height:deviceSize.height/8,
              width:deviceSize.width/8,
              decoration:BoxDecoration(shape: BoxShape.circle,image:DecorationImage(image:AssetImage(user.imagUrl),),border: Border.all(
                color:const Color(0xFFF4DB7E),
                width:3,
              ),),
              //clipBehavior: Clip.antiAlias,
              child: Text(''),
            ),
          ),
          Container(
            width:deviceSize.width - 2*(deviceSize.width/8),
            height: deviceSize.height/13,
            padding: EdgeInsets.all(15),
            child: Text(discription,style:const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xffFE693E),
              fontFamily: 'aldhabi',
            ),),
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
        ],
      ),
    );
  }
}
