import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/themeprovider.dart';
import 'FavouritScreen.dart';
import 'MyAccount.dart';
import 'NotificationScreen.dart';

class appdrawer extends StatelessWidget {
  static const routename = '/appdrawer';
  @override
  Widget build(BuildContext context) {
   // var lan=Provider.of<LanguageProvider>(context,listen: true);
    final deviceSize = MediaQuery.of(context).size;
    var Th= Provider.of<ThemeProvider>(context,listen: true);
    return Drawer(
      elevation: 0.1,
      child: ListView(
        children: [
          Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation:0.1,
              shadowColor:Colors.white24,
              automaticallyImplyLeading: false,
              toolbarHeight:123,
              title: Container(
                  alignment:Alignment.center,height: 123,
                  child: Image.asset('assets/images/Logo2.png',fit:BoxFit.fill,width:deviceSize.width ,)),
            ),
            const Divider(),

            /// My Account
            ListTile(
              leading: Icon(Icons.account_circle_rounded,color:Th.getColor("secondaryColor") as Color?,),
              title: Text('My Account',style: TextStyle(fontSize: 20,fontFamily: 'SegoeMarker',color:Th.getColor("Orange") as Color?,fontWeight:FontWeight.bold),),
              onTap: ()=>Navigator.of(context).pushReplacementNamed(MyAccount.routename),
            ),

            /// Search About Ingredient
            ListTile(
              leading: Icon(Icons.search,color:Th.getColor("secondaryColor") as Color?,),
              title: Text('Search About Ingredient',style: TextStyle(fontSize: 20,fontFamily: 'SegoeMarker',color:Th.getColor("Orange") as Color?,fontWeight:FontWeight.bold),),
              onTap: () {}
              //=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AllBooksPage())),
            ),

            /// Notifications
            ListTile(
              leading: Icon(Icons.messenger_rounded,color:Th.getColor("secondaryColor") as Color?,),
              title: Text('Notifications',style: TextStyle(fontSize: 20,fontFamily: 'SegoeMarker',color:Th.getColor("Orange") as Color?,fontWeight:FontWeight.bold),),
              onTap: ()=> Navigator.of(context).pushReplacementNamed(NotificationScreen.routname),
            ),

            /// Favourite
            ListTile(
              leading: Icon(Icons.star,color: Th.getColor("secondaryColor") as Color?),
              title: Text('Favourite',
                style: TextStyle(fontSize: 20,fontFamily: 'SegoeMarker',color:Th.getColor("Orange") as Color?,fontWeight:FontWeight.bold),
              ),
              onTap: ()=> Navigator.of(context).pushReplacementNamed(FavouritScreen.routname),
            ),
            const Divider(),

            /// About Us
            ListTile(
              leading: Icon(Icons.accessibility,color:Th.getColor("secondaryColor") as Color?),
              title: Text('ABOUT US',style: TextStyle(fontSize: 20,fontFamily: 'SegoeMarker',color: Th.getColor("Orange") as Color?,fontWeight:FontWeight.bold),),
              onTap: (){}
              //=>Navigator.of(context).pushNamed(AboutUs.routename),
            ),

            /// LogOut
            ListTile(
                leading: Icon(Icons.exit_to_app,color:Th.getColor("secondaryColor") as Color?,),
                title: Text('LOUGOUT',style: TextStyle(fontSize: 20,fontFamily: 'SegoeMarker',color: Th.getColor("Orange") as Color?,fontWeight:FontWeight.bold),),
                onTap: () {
                  /// تابع تسجيل الخروج في الداتا بيز
                 // Navigator.of(context).pop();
                 // Navigator.of(context).pushReplacementNamed('/');
                 // Provider.of<Auth>(context, listen: false).logOut();
                }),
            const Divider(),

            /// Language
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 20,right: 22),
              child:Text(('  Choose Your Prefer Language.'),
                style: TextStyle(fontSize: 20,fontFamily: 'SegoeMarker',color:Th.getColor("Orange") as Color?,fontWeight:FontWeight.bold),
              ),
            ),
            Padding(
              padding:const EdgeInsets.only(right: (0),left:(20),bottom:15,top:15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(('Arabic'),
                    style: TextStyle(fontSize: 20,fontFamily: 'SegoeMarker',color:Th.getColor("secondaryColor") as Color?,fontWeight:FontWeight.bold),
                  ),
                  Switch(
                    value:true ,
                    onChanged:(newValue){
                    //Provider.of<LanguageProvider>(context,listen:false).changeLan(newValue);
                   // Navigator.of(context).pop();
                    },
                    activeColor:  const Color(0xffFE693E),

                  ),
                  Text(('English'),
                    style: TextStyle(fontSize: 20,fontFamily: 'SegoeMarker',color:Th.getColor("secondaryColor") as Color?,fontWeight:FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Divider(),

            /// Theme
            Container(
              alignment:Alignment.centerLeft,
              padding:const EdgeInsets.only(top: 20,right: 22),
              child:Text('   Choose Your Prefer Theme.',
                style: TextStyle(fontSize: 20,fontFamily: 'SegoeMarker',color:Th.getColor("Orange") as Color?,fontWeight:FontWeight.bold),
              ),
            ),
            Padding(
              padding:const EdgeInsets.only(right: (0),left:(20),bottom:15,top:15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Dark',
                    style: TextStyle(fontSize: 20,fontFamily: 'SegoeMarker',color:Th.getColor("secondaryColor") as Color?,fontWeight:FontWeight.bold),
                  ),
                  Switch(
                    value: Provider.of<ThemeProvider>(context,listen: true).isLight,
                    onChanged:(newValue){
                      Provider.of<ThemeProvider>(context,listen:false).changeTheme(newValue);
                      Navigator.of(context).pop();
                    },
                    activeColor:  const Color(0xffFE693E),

                  ),
                  Text('Light',
                    style: TextStyle(fontSize: 20,fontFamily: 'SegoeMarker',color:Th.getColor("secondaryColor") as Color?,fontWeight:FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Divider(),

          ],
        ),
        ],
      ),
    );
  }
}
