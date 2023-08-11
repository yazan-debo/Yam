import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ShowDialoge extends StatefulWidget {
  const ShowDialoge({Key? key}) : super(key: key);


  @override
  _ShowDialogeState createState() => _ShowDialogeState();
}

class _ShowDialogeState extends State<ShowDialoge> {

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
    return  Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 10),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Name of  Company",
          focusColor:const  Color(0xFFF4DB7E),
          hintStyle: const TextStyle(color: Color(0xFFF4DB7E)),
          suffixIcon: IconButton(
              onPressed: () {
                var ad = AlertDialog(
                  backgroundColor: const Color(0xFFF1F4F6),
                  title: const Text(
                    "choose picture",
                    style: TextStyle(
                      fontFamily: 'SegoeMarker',
                      color: Color(0xff1A2239),
                      fontSize: 30,
                    ),
                  ),
                  content: SizedBox(
                    height: 150,
                    child: Column(
                      children: [
                        const Divider(color: Colors.black),
                        Container(
                            width: 300,
                            color: const Color(0xffFE693E),
                            child: ListTile(
                              leading: const Icon(Icons.image,
                                  color: Color(0xFFF1F4F6)),
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
                            color: const Color(0xffFE693E),
                            child: ListTile(
                              leading: const Icon(
                                Icons.camera,
                                color: Color(0xFFF1F4F6),
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
                showDialog(builder: (context)=> ad, context: context);
              },
              icon:const Icon(Icons.add_a_photo, color: Color(0xFFF4DB7E))
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFFE693E),
              width: 2,
            ),
          ),
        ),
      ),
    );

        }
}