import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_2/dummy_data.dart';
import 'Edit_Account.dart';
import 'LoginWidget.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);
  static const routename = '/myAccount';


  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {

  File ? image;
  String? imageproduct;
  var picker = ImagePicker();

  Future getImage(ImageSource src)async{
    var pickedFile = await picker.pickImage(source: src);

    setState((){
      if(pickedFile != null){
        imageproduct = pickedFile.path;
        image = File( pickedFile.path);
      } else {
        print('No image selected');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Container(
      decoration:const BoxDecoration(image: DecorationImage(image:AssetImage("assets/images/BackGround.jpg"),
          opacity:0.1)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation:0.1,
          shadowColor:Colors.white24,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon:const Icon(
              Icons.arrow_back,
              color: Color(0xFF1A2239),
              size: 50,
            ),
            onPressed: () => Navigator.of(context).pushNamed(LoginWidget.routename,),
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
          flexibleSpace:const FlexibleSpaceBar(
            title: Align(
              alignment: AlignmentDirectional(0, 1),
              child:Text(
                'My Account',
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
        body: SafeArea(
          top: true,
          child: ListView(
              padding: const EdgeInsets.all(15),
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    /// Image User
                      Center(
                      child: Align(
                        alignment:AlignmentDirectional.center,
                        child: Container(
                          height:deviceSize.height/2,
                          width:deviceSize.width/2,
                          decoration:BoxDecoration(shape: BoxShape.circle,image:DecorationImage(image:AssetImage(user.imagUrl),),border: Border.all(
                            color:const Color(0xff1A2239),
                            width: 2.0,
                          ),),
                          //clipBehavior: Clip.antiAlias,
                          child: Text(''),
                        ),
                      ),
                    ),

                    /// Full Name
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          /// Full Name
                          const Text(
                            'Full Name',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'SegoeMarker',
                              color: Color(0xFF1A2239),
                              fontSize: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: Container(
                              height: deviceSize.height/13,
                              width: deviceSize.width,
                              decoration: BoxDecoration(
                                border: Border.all(color:const Color(0xFF9DA9F1)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(-0.8, 0),
                                child: Text(user.name,style:const TextStyle(color: Color(0xffFE693E),fontFamily: 'aldhabi',fontSize:40),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// Email
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(15,20, 0,0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            'Email',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'SegoeMarker',
                              color: Color(0xFF1A2239),
                              fontSize: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: Container(
                              height: deviceSize.height/13,
                              width: deviceSize.width,
                              decoration: BoxDecoration(
                                border: Border.all(color:const Color(0xFF9DA9F1)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              //margin: const EdgeInsets.all(10),
                              //padding: const EdgeInsets.all(10),
                              child: Align(
                                alignment: const AlignmentDirectional(-0.8, 0),
                                child: Text(user.email,style:const TextStyle(color: Color(0xffFE693E),fontFamily: 'aldhabi',fontSize:40),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// Password
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            'Password',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'SegoeMarker',
                              color: Color(0xFF1A2239),
                              fontSize: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 0,0, 0),
                            child: Container(
                              height: deviceSize.height/13,
                              width: deviceSize.width,
                              decoration: BoxDecoration(
                                border: Border.all(color:const Color(0xFF9DA9F1)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(-0.8, 0),
                                child: Text(user.password,style:const TextStyle(color: Color(0xffFE693E),fontFamily: 'aldhabi',fontSize: 40),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// Button Edit
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(15, 20, 0,15),
                      child: SizedBox(
                        height:49,
                        width:231,
                        child: ElevatedButton(
                          onPressed: ()=> Navigator.of(context).pushReplacementNamed(EditAccount.routename),
                          child:const Text( 'Edit',style:TextStyle(
                            fontFamily: 'SegoeMarker',
                            color: Color(0xFF1A2239),
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                          ),),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFFE693E)),
                            padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.fromLTRB(24, 15, 24, 15)),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),),
                            elevation: MaterialStateProperty.all<double>(3.0),
                          ),


                        ),
                      ),
                    ),
                  ],
                ),
              ]
          ),
        ),
      ),
    );
  }
}
