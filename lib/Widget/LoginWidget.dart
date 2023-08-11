import 'package:flutter/material.dart';
import '../Widget/CreateAccount.dart';
import 'app_drawer.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);
  static const routename = '/login';


  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {

  bool passvisi = true;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Container(
      decoration:const BoxDecoration(image: DecorationImage(image:AssetImage("assets/images/BackGround.jpg"),
          opacity:0.1)),
      child: Scaffold(
        drawer:appdrawer(),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation:0.1,
          shadowColor:Colors.white24,
          automaticallyImplyLeading: false,
            leading:Align(
              alignment: const AlignmentDirectional(0, 0.4),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    appdrawer.routename;
                  });
                },
                //Navigator.of(context).pushNamed(appdrawer.routename),
                icon:const Icon(
                  Icons.menu,
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Text(
                    'Account Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'SegoeMarker',
                      color: Color(0xFFFE693E),
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
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
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
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
                SizedBox(
                  height:49 ,
                  width: 231,
                  child: ElevatedButton(
                    onPressed: () {
                      //print('Button pressed ...');
                    },
                    child:const Text( 'Login',style:TextStyle(
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
                TextButton(
                  onPressed: () {
                    //print('Button pressed ...');
                  },
                  child:const Text( 'forget password',style: TextStyle( fontFamily: 'aldhabi',
                    color: Color(0xFFFE693E),
                    fontSize: 23,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.underline,),),
                ),
                SizedBox(
                  height:49,
                  width:231,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context)
                        .pushReplacementNamed(CreateAccount.routename),
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
              ],
            ),
          ),
        ),
    );
  }
}
