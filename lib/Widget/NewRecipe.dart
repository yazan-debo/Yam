import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'app_drawer.dart';
import 'LoginWidget.dart';

class NewRecipe extends StatefulWidget {
  const NewRecipe({Key? key}) : super(key: key);
  static const routename = '/newRecipe';

  @override
  _NewRecipeState createState() => _NewRecipeState();
}

class _NewRecipeState extends State<NewRecipe> {
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();

  final _steps = <Step>[];
  final _ingradients = <Ingredient>[];
//  String? _recipeName;

  List<String> itemList = [
    'Hard',
    'Medium',
    'Easy',
  ];
  String? selectedItem = 'Hard';

  List<String> Category_List = ['Vegetarian', 'Sweet', 'Unportunate', 'Juice'];
  String? selectedCategory = 'Vegetarian';

  File? image;
  String? imageproduct;
  var picker = ImagePicker();

  Future getImage(ImageSource src) async {
    var pickedFile = await picker.pickImage(source: src);

    setState(() {
      if (pickedFile != null) {
        imageproduct = pickedFile.path;
        image = File(pickedFile.path);
      } else {
        print('No image selected');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
   final deviceSize = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/BackGround.jpg"), opacity: 0.1)),
      child: Scaffold(
        drawer:appdrawer(),
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
            icon:const Icon(
              Icons.menu,
              size: 30,
              color: Color(0xff1A2239),
            ),),
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
          flexibleSpace: const FlexibleSpaceBar(
            title: Align(
              alignment: AlignmentDirectional(0, 1),
              child: Text(
                'New Recipe',
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
            expandedTitleScale:1.0,
          ),
          toolbarHeight: 117,
        ),
        body: SafeArea(
          top: true,
          child: ListView(padding: const EdgeInsets.all(15), children: [
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
                      ///Name Of Recipe
                      const Text(
                        'Name Of Recipe',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'SegoeMarker',
                          color: Color(0xFF1A2239),
                          fontSize: 30,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 20, 8, 0),
                        child: TextFormField(
                          //controller: _model.textController1,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Enter Name Of Recipe',
                            hintStyle: const TextStyle(
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
                                color: Colors.red,
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
                /// how to prepare
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text(
                        'How To PrePare',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'SegoeMarker',
                          color: Color(0xFF1A2239),
                          fontSize: 30,
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
                    children: [
                      SizedBox(
                        width:deviceSize.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              child: const Text(
                                'Steps',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'SegoeMarker',
                                  color: Color(0xffFE693E),
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  _addStep();
                                },
                                icon: const Icon(Icons.add,
                                    color: Color(0xffFE693E))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Form(
                      key: _formKey1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ..._steps,
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                ),
                ///Tips
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text(
                        'Tips',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'SegoeMarker',
                          color: Color(0xFF1A2239),
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),

                /// Tips & duration & complexity & price
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    /// Tips
                    Card(
                      color: const Color(0xFFF4DB7E).withOpacity(0.6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 8.0,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                        height: 220,
                        width: deviceSize.width/1.6,
                        padding: const EdgeInsets.all(16),
                        child: Form(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        hintText: "enter the Tips",
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xffFE693E),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15, 20, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: const [
                                          Text(
                                            'Category',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontFamily: 'SegoeMarker',
                                              color: Color(0xffFE693E),
                                              fontSize: 23,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Form(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                            child:
                                                DropdownButtonFormField<String>(
                                              decoration: const InputDecoration(
                                                focusColor: Color(0xff1A2239),
                                              ),
                                              iconEnabledColor:
                                                  const Color(0xff1A2239),
                                              value: selectedCategory,
                                              items: Category_List.map(
                                                (item) => DropdownMenuItem(
                                                    value: item,
                                                    child: Text(item,
                                                        style: const TextStyle(
                                                            fontSize: 15,
                                                            color: Color(
                                                                0xff1A2239)))),
                                              ).toList(),
                                              onChanged: (item) => setState(
                                                  () =>
                                                      selectedCategory = item),
                                              isExpanded: true,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),

                    /// duration & complexity & price
                    Column(
                      children: [

                        ///duration
                        Container(
                         // height: deviceSize.height/10,
                          width: deviceSize.width/4,
                          padding: const EdgeInsets.all(16),
                          child: Form(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                hintText: "20",
                                focusColor: Color(0xFFF4DB7E),
                                hintStyle:
                                    TextStyle(color: Color(0xFFF4DB7E)),
                                prefixIcon: Icon(Icons.timer_outlined,
                                    color: Color(0xFFF4DB7E)),
                              ),
                            ),
                          ),
                        ),
                        ///complexity
                        Container(
                          width: deviceSize.width/3.7,
                          padding: const EdgeInsets.all(16),
                          child: Center(
                            child: DropdownButtonFormField<String>(
                              decoration: const InputDecoration(
                                focusColor: Color(0xFF9DA9F1),
                                prefixIcon: Icon(
                                    Icons.add_location_outlined,
                                    color: Color(0xFF9DA9F1)),
                              ),
                              iconEnabledColor: const Color(0xFF9DA9F1),
                              value: selectedItem,
                              items: itemList
                                  .map(
                                    (item) => DropdownMenuItem(
                                        value: item,
                                        child: Text(item,
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color:
                                                    Color(0xFF9DA9F1)))),
                                  )
                                  .toList(),
                              onChanged: (item) =>
                                  setState(() => selectedItem = item),
                              isExpanded: true,
                            ),
                          ),
                        ),
                        ///price
                        Container(
                          width: deviceSize.width/4,
                          padding: const EdgeInsets.all(16),
                          child: Form(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                hintText: "150",
                                focusColor: Color(0xFFF4DB7E),
                                hintStyle:
                                    TextStyle(color: Color(0xFFF4DB7E)),
                                prefixIcon: Icon(Icons.monetization_on,
                                    color: Color(0xFFF4DB7E)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                ///Ingredient
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 20, 0, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text(
                        'Ingredients',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'SegoeMarker',
                          color: Color(0xFF1A2239),
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ..._ingradients,
                            const SizedBox(height: 16),
                            IconButton(
                                onPressed: () {
                                  _add_ingredient();
                                },
                                icon: const Icon(Icons.add,
                                    color: Color(0xff1A2239))),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                ///Button Add
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 20, 0, 15),
                  child: SizedBox(
                    height: 49,
                    width: 231,
                    child: ElevatedButton(
                      onPressed: () {
                        //print('Button pressed ...');
                      },
                      child: const Text(
                        'Add a New',
                        style: TextStyle(
                          fontFamily: 'SegoeMarker',
                          color: Color(0xFF1A2239),
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFFFE693E)),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.fromLTRB(24, 15, 24, 15)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        elevation: MaterialStateProperty.all<double>(3.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  void _addStep() {
    setState(() {
      _steps.add(const Step());
    });
  }

  void _saveRecipe() {
    final form = _formKey.currentState;
    if (form != null && form.validate()) {
      form.save();
      // بمجرد الوصول إلى هنا، يمكنك حفظ معلومات الوصفة في قاعدة البيانات
      // ويمكنك الوصول إلى معلومات الوصفة باستخدام المتغير _recipeName
      // وبالنسبة للخطوات، يمكنك الوصول إليها عن طريق القائمة _steps
    }
  }

  void _add_ingredient() {
    setState(() {
      _ingradients.add(const Ingredient());
    });
  }
}



///////////////////////////////// Step

class Step extends StatefulWidget {
  const Step({Key? key}) : super(key: key);

  @override
  _StepState createState() => _StepState();
}

class _StepState extends State<Step> {
  String? _stepDescription;
  File? image;
  String? imageproduct;
  var picker = ImagePicker();

  Future getImage(ImageSource src) async {
    var pickedFile = await picker.pickImage(source: src);

    setState(() {
      if (pickedFile != null) {
        imageproduct = pickedFile.path;
        image = File(pickedFile.path);
      } else {
        print('No image selected');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 8.0,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
        height: 120,
        width: deviceSize.width,
        padding: const EdgeInsets.all(16),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Step",
                        hintText: "enter the Description",
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffFE693E),
                          ),
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              var ad = AlertDialog(
                                backgroundColor: const Color(0xff1A2239),
                                title: const Text(
                                  "choose picture",
                                  style: TextStyle(fontFamily: 'SegoeMarker',
                                      color: Color(0xFF9DA9F1),fontSize: 30,
                                  ),
                                ),
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
                            icon:const Icon(Icons.add_a_photo, color: Color(0xFF9DA9F1),)
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "يرجى إدخال وصف الخطوة";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _stepDescription = value;
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///////////////////////////////// Ingredient

class Ingredient extends StatefulWidget {
  const Ingredient({Key? key}) : super(key: key);

  @override
  _IngredientState createState() => _IngredientState();
}

class _IngredientState extends State<Ingredient> {
  String? _ingraDescription;

  ///Ingredient
  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Ingradient",
                labelStyle: TextStyle(color: Color(0xff1A2239)),
                hintText: "enter the Description",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff1A2239),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFE693E),
                    width: 2,
                  ),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "يرجى إدخال وصف الخطوة";
                }
                return null;
              },
              onSaved: (value) {
                _ingraDescription = value;
              },
            ),
             const Padding(
              padding:  EdgeInsetsDirectional.fromSTEB(15, 20, 0, 10),
              child: Text(
               'Advertisement',
               textAlign: TextAlign.start,
               style: TextStyle(
                 fontFamily: 'SegoeMarker',
                 color: Color(0xffFE693E),
                 fontSize: 20,
               ),
                  ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 10),
              child: TextFormField(
                decoration:const InputDecoration(
                  hintText: "Name of  Company",
                  focusColor: Color(0xFFF4DB7E),
                  hintStyle: TextStyle(color: Color(0xFFF4DB7E)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFFE693E),
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
