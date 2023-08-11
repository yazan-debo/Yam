import 'package:flutter/material.dart';
import '/Widget/CreateAccount.dart';
import 'package:provider/provider.dart';
import 'Widget/Chef_Page.dart';
import 'Widget/Edit_Account.dart';
import 'Widget/FavouritScreen.dart';
import 'Widget/HomePage.dart';
import 'Widget/LoginWidget.dart';
import 'Widget/MyAccount.dart';
import 'Widget/NewRecipe.dart';
import 'Widget/NotificationScreen.dart';
import 'Widget/OneNotification.dart';
import 'Widget/OneRecipe.dart';
import 'provider/themeprovider.dart';
import 'Widget/app_drawer.dart';
import 'Widget/MyRecipe.dart';


void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(create: (ctx)=>ThemeProvider(),),
      ],
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yam',
        home:const NewRecipe(),
        routes:{
          LoginWidget.routename:(_)=>const LoginWidget(),
          CreateAccount.routename:(_)=>const CreateAccount(),
          NewRecipe.routename:(_)=>const NewRecipe(),
          appdrawer.routename:(_)=>appdrawer(),
          HomePageWidget.routename:(_)=>const HomePageWidget(),
          OneNotif.routname:(_)=> const OneNotif(),
          NotificationScreen.routname:(_)=> const NotificationScreen(),
          FavouritScreen.routname:(_)=> const FavouritScreen(),
          MyRecipe.routename:(_)=> const MyRecipe(),
          ChefPage.routename:(_)=>const ChefPage(),
          OneRecipe.routename:(_)=>const OneRecipe(),
          MyAccount.routename:(_)=>const MyAccount(),
          EditAccount.routename:(_)=>const EditAccount(),
        },
      ),
    );
  }
}
