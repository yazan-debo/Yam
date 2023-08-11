import 'package:flutter/material.dart';


class ImageShow extends StatelessWidget {
  final String image;

  ImageShow({
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Stack(
      children: [
        ///Image show
        Center(
          child: ClipRRect(
            child: Column(
              children: [
                Image.asset(
                  image,
                  width:deviceSize.width/1.5,
                  height:deviceSize.width/1.5,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        ///Inform
        Padding(
          padding:EdgeInsets.fromLTRB(0,deviceSize.width/2.3, 0, 0),
          child: Center(
            child: Align(
              alignment:const AlignmentDirectional(0, 0),
              child: Container(
                width: deviceSize.width/3.2,
                height:deviceSize.width/12,
                decoration:const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                       Color(0xFFF4DB7E),
                    ],
                    begin:Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  //color: const Color(0xFFF4DB7E).withOpacity(0.7),
                  shape: BoxShape.rectangle,
                ),
                alignment:const AlignmentDirectional(0, 0),
                child: Align(
                  alignment:
                  const AlignmentDirectional(-1, 0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional
                        .fromSTEB(10, 0, 0, 0),
                    child: InkWell(
                      onTap: ()=>{
                        /// تابع تقديم البلاغ في الداتا بيز
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:const[
                          Icon(Icons.warning_amber_rounded,color: Colors.red,size: 35,),
                          Text('Inform',style:TextStyle(color:Colors.red,fontSize: 30)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );

  }


}