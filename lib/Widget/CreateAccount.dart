import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'LoginWidget.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);
  static const routename = '/create';


  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  bool passvisi = true;
  bool passvisi2 = true;

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
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children:[
                      Align(
                        alignment:AlignmentDirectional.center,
                        child: Container(
                          height:deviceSize.height/2.5,
                          width:deviceSize.width/2.5,
                          decoration:BoxDecoration(shape: BoxShape.circle,image:const DecorationImage(image:AssetImage("assets/images/Asset 1.png"),
                              opacity:0.1),border: Border.all(
                            color:const Color(0xff1A2239),
                            width: 4.0,
                          ),),
                          //clipBehavior: Clip.antiAlias,
                          child: Text(''),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          var ad = AlertDialog(
                            backgroundColor: const Color(0xff1A2239),
                            title: const Text(
                              "choose picture",
                              style: TextStyle(
                                fontFamily: 'SegoeMarker',
                                color: Color(0xFF9DA9F1),
                                fontSize: 30,
                              ),                          ),
                            content: SizedBox(
                              height: 150,
                              child: Column(
                                children: [
                                  const Divider(color: Colors.black),
                                  Container(
                                      width: 300,
                                      color: const Color(0xFF9DA9F1),
                                      child: ListTile(
                                        leading: const Icon(Icons.image,
                                            color: Color(0xff1A2239)),
                                        title: const Text("Gallery",style: TextStyle(
                                          fontFamily: 'SegoeMarker',
                                          fontSize: 23,
                                          color: Color(0xff1A2239),
                                        ),),
                                        onTap: () {
                                          getImage(ImageSource.gallery);
                                          Navigator.of(context).pop();
                                        },
                                      )),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      width: 300,
                                      color: const Color(0xFF9DA9F1),
                                      child: ListTile(
                                        leading: const Icon(
                                          Icons.camera,
                                          color: Color(0xff1A2239),
                                        ),
                                        title: const Text("Camera",style: TextStyle(
                                          fontFamily: 'SegoeMarker',
                                          fontSize: 23,
                                          color: Color(0xff1A2239),
                                        ),),
                                        onTap: () {
                                          getImage(ImageSource.camera);
                                          Navigator.of(context).pop();
                                        },
                                      ))
                                ],
                              ),
                            ),
                          );
                          showDialog(builder: (context) => ad, context: context);
                        },
                        child: const Icon(Icons.add_a_photo,color: Color(0xff1A2239),size: 33,),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'First Name',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'SegoeMarker',
                            color: Color(0xFF1A2239),
                            fontSize: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                          child: TextFormField(
                            //controller: _model.textController1,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Enter Your First Name',
                              hintStyle:
                              const TextStyle(
                                fontSize: 14,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF9DA9F1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFFE693E),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color:  Colors.red,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            style: const TextStyle(
                              color: Color(0xFF1A2239),
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.start,
                            //validator: _model.textController1Validator.asValidator(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(15,20, 0,0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Last Name',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'SegoeMarker',
                            color: Color(0xFF1A2239),
                            fontSize: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                          child: TextFormField(
                            //controller: _model.textController1,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Enter Your Last Name',
                              hintStyle:
                              const TextStyle(
                                fontSize: 14,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF9DA9F1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFFE693E),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color:  Colors.red,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            style: const TextStyle(
                              color: Color(0xFF1A2239),
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.start,
                            //validator: _model.textController1Validator.asValidator(context),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                          child: TextFormField(
                            //controller: _model.textController1,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Enter Email',
                              hintStyle:
                              const TextStyle(
                                fontSize: 14,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF9DA9F1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFFE693E),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color:  Colors.red,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            style: const TextStyle(
                              color: Color(0xFF1A2239),
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.start,
                            //validator: _model.textController1Validator.asValidator(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children:const [
                         Text(
                          'The Password minimum 8 characters',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'aldhabi',
                            color: Color(0xffFE693E),
                            fontSize: 25,
                          ),
                        )
                      ],
                    ),
                  ),

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
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                          child: TextFormField(
                            //controller: _model.textController2,
                            //onChanged: (_) => EasyDebounce.debounce('_model.textController2',
                            //Duration(milliseconds: 2000),
                            //  () => setState(() {}),),
                            autofocus: true,
                            obscureText: passvisi,
                            decoration: InputDecoration(
                              hintText: 'Enter Password',
                              hintStyle:
                              const TextStyle(
                                fontSize: 14,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF9DA9F1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFFE693E),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide:const BorderSide(
                                  color:  Colors.red,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              suffixIcon: IconButton(
                                iconSize: 25,
                                icon: Icon(
                                    passvisi ? Icons.visibility : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    passvisi = !passvisi;
                                  });
                                },
                              ),
                            ),
                            style: const TextStyle(
                              //fontFamily: 'Readex Pro',
                              color: Color(0xFF1A2239),
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.start,
                            keyboardType:TextInputType.visiblePassword,
                            //validator: _model.textController2Validator.asValidator(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(15, 20, 0,0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Confirm Password',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'SegoeMarker',
                            color: Color(0xFF1A2239),
                            fontSize: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                          child: TextFormField(
                            //controller: _model.textController2,
                            //onChanged: (_) => EasyDebounce.debounce('_model.textController2',
                            //Duration(milliseconds: 2000),
                            //  () => setState(() {}),),
                            autofocus: true,
                            obscureText: passvisi2,
                            decoration: InputDecoration(
                              hintText: 'ReEnter Your Password',
                              hintStyle:
                              const TextStyle(
                                fontSize: 14,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF9DA9F1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFFE693E),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide:const BorderSide(
                                  color:  Colors.red,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              suffixIcon: IconButton(
                                iconSize: 25,
                                icon: Icon(
                                    passvisi2 ? Icons.visibility : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    passvisi2 = !passvisi2;
                                  });
                                },
                              ),
                            ),
                            style: const TextStyle(
                              //fontFamily: 'Readex Pro',
                              color: Color(0xFF1A2239),
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.start,
                            keyboardType:TextInputType.visiblePassword,
                            //validator: _model.textController2Validator.asValidator(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(15, 20, 0,15),
                    child: SizedBox(
                      height:49,
                      width:231,
                      child: ElevatedButton(
                        onPressed: () {
                          //print('Button pressed ...');
                        },
                        child:const Text( 'Create Account',style:TextStyle(
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
