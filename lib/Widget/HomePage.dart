import 'package:flutter/material.dart';
import '../components/RecipWidget.dart';
import '../dummy_data.dart';
import 'app_drawer.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);
  static const routename = '/homePage';

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with SingleTickerProviderStateMixin {
  PageController _pageController = PageController();
  int _selectedPage =0;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    final categoryMeal = DUMMY_Meals;

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/BackGround.jpg"), opacity: 0.1)),
      child: Scaffold(
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
            icon: const Icon(
              Icons.menu,
              size: 30,
              color: Color(0xff1A2239),
            ),
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
          flexibleSpace: const FlexibleSpaceBar(
            title: Align(
              alignment: AlignmentDirectional(0, 1),
              child: Text(
                'Home',
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
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                        child: Stack(
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            120, 0, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/Adv.jpg',
                                        width: 207,
                                        height: 316,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: const [
                                              Text(
                                                'Name',
                                                style: TextStyle(
                                                  fontFamily: 'SegoeMarker',
                                                  color: Color(0xFFFE693E),
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const Icon(
                                            Icons.comment_sharp,
                                            color: Color(0xFF57636C),
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: const BoxDecoration(
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    80, 0, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    'assets/images/Adv.jpg',
                                    width: 207,
                                    height: 316,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-2.17, 0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    40, 0, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    'assets/images/Adv.jpg',
                                    width: 207,
                                    height: 316,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    'assets/images/Adv.jpg',
                                    width: 207,
                                    height: 316,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0, 1),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 210, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0, 0),
                                          child: Container(
                                            width: 207,
                                            height: 68,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFFE0E0E0),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: const [
                                                      Text(
                                                        'Name',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'SegoeMarker',
                                                          color:
                                                              Color(0xFFFE693E),
                                                          fontSize: 30,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Kind',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'SegoeMarker',
                                                          color: const Color(
                                                              0xFF9DA9F1),
                                                          fontSize: 25,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.comment_sharp,
                                                  color: Colors.grey
                                                      .withOpacity(0.7),
                                                  size: 30,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 207,
                                          height: 38,
                                          decoration: const BoxDecoration(
                                            color: Color(0xFFD3D6DA),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(30),
                                              topLeft: Radius.circular(0),
                                              topRight: Radius.circular(0),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: const [
                                              Icon(
                                                Icons.star_rounded,
                                                color: Color(0xFFF4DB7E),
                                                size: 35,
                                              ),
                                              Icon(
                                                Icons.star_rounded,
                                                color: Color(0xFFF4DB7E),
                                                size: 35,
                                              ),
                                              Icon(
                                                Icons.star_rounded,
                                                color: Color(0xFFF4DB7E),
                                                size: 35,
                                              ),
                                              Icon(
                                                Icons.star_rounded,
                                                color: Color(0xFFF4DB7E),
                                                size: 35,
                                              ),
                                              Icon(
                                                Icons.star_rounded,
                                                color: Color(0xFFF4DB7E),
                                                size: 35,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(25, 30, 25, 0),
                      child:TextFormField(
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Click to Search Here',
                          hintStyle:
                          const TextStyle(
                            color: Color(0xFF9DA9F1),
                            fontSize: 18,
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
                              color: Color(0xFF9DA9F1),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),

                          prefixIcon:const Padding(
                            padding:  EdgeInsets.all(12.0),
                            child: Icon(Icons.search_rounded,color:Color(0xFFF4DB7E) ,size:30 ,),
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
                  ),

                  const Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                      child: Text(
                        'Highest rated recipes',
                        style: TextStyle(
                          fontFamily: 'SegoeMarker',
                          color: Color(0xffFE693E),
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                 Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 440,
                            width: double.infinity,
                            child: PageView.builder(
                                controller: _pageController,
                                onPageChanged: (index) {
                                  setState(() {
                                    _selectedPage = index;
                                  });
                                },
                                itemCount: categoryMeal.length,
                                itemBuilder: (BuildContext c, int index) {
                                  return RecipWidget(
                                    index: index,
                                    id: categoryMeal[index].id,
                                    category: categoryMeal[index].category,
                                    name: categoryMeal[index].name,
                                    chef: categoryMeal[index].chef,
                                    imgurl: categoryMeal[index].imgurl,
                                    duration: categoryMeal[index].duration,
                                    complexity: categoryMeal[index].complexity,
                                    price: categoryMeal[index].price,
                                    watchers: categoryMeal[index].watchers,
                                    pageController: _pageController,
                                  );
                                }),
                          ),
                          const SizedBox(height: 25,),
                        ],
                      ),



                  /*Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment:const AlignmentDirectional(1, 0),
                          child: Align(
                            alignment: const AlignmentDirectional(1, 0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
                              child: Container(
                                width: 370,
                                height: 440,
                                decoration: BoxDecoration(
                                  color:const Color(0xFFE0E0E0),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(0),
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                          ),
                                          child: Image.asset(
                                            'assets/images/rec.jpg',
                                            width: 370,
                                            height: 293,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(-1, 0),
                                              child: Container(
                                                width: 108,
                                                height: 38,
                                                decoration: const BoxDecoration(
                                                  color: Color(0xFFF4DB7E),
                                                  borderRadius: BorderRadius.only(
                                                    bottomLeft: Radius.circular(0),
                                                    bottomRight: Radius.circular(0),
                                                    topLeft: Radius.circular(30),
                                                    topRight: Radius.circular(0),
                                                  ),
                                                ),
                                                child:const Align(
                                                  alignment: AlignmentDirectional(0, 0),
                                                  child: Text(
                                                    'Category',
                                                    textAlign: TextAlign.center,
                                                    style:TextStyle(
                                                      fontFamily: 'aldhabi',
                                                      color: Color(0xFFFE693E),
                                                      fontSize: 30,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment:const AlignmentDirectional(1, 1),
                                              child: Padding(
                                                padding:const EdgeInsetsDirectional.fromSTEB(0, 210, 0, 0),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:const AlignmentDirectional(1, 1),
                                                      child: Stack(
                                                        alignment:const AlignmentDirectional(1, 0),
                                                        children: [
                                                          Align(
                                                            alignment:const AlignmentDirectional(0, 0),
                                                            child: Padding(
                                                              padding:const EdgeInsetsDirectional.fromSTEB(
                                                                  0, 0, 10, 0),
                                                              child: Container(
                                                                width: 178,
                                                                height: 39,
                                                                decoration:const BoxDecoration(
                                                                  color: Color(0xFFF1F4F6),
                                                                  shape: BoxShape.rectangle,
                                                                ),
                                                                alignment:const AlignmentDirectional(0, 0),
                                                                child:const Align(
                                                                  alignment:
                                                                  AlignmentDirectional(-1, 0),
                                                                  child: Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(10, 0, 0, 0),
                                                                    child: Text(
                                                                      'Rana_Maarii',
                                                                      textAlign: TextAlign.center,
                                                                      style:
                                                                      TextStyle(
                                                                        fontFamily: 'aldhabi',
                                                                        color:
                                                                        Color(0xFFF4DB7E),
                                                                        fontSize: 30,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:const AlignmentDirectional(1, 0),
                                                            child: Container(
                                                              width: 70,
                                                              height: 70,
                                                              clipBehavior: Clip.antiAlias,
                                                              decoration:const BoxDecoration(
                                                                shape: BoxShape.circle,
                                                              ),
                                                              child: Image.asset(
                                                                'assets/images/rec.jpg',
                                                                fit: BoxFit.cover,
                                                              ),
                                                            ),
                                                          ),

                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        const Align(
                                          alignment: AlignmentDirectional(-1, 0),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 10),
                                            child: Text(
                                              'Name Of recipe',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontFamily: 'SegoeMarker',
                                                color: Color(0xFF1A2239),
                                                fontSize: 37,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:const AlignmentDirectional(0, 0),
                                          child: Padding(
                                            padding:const EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  '18',
                                                  style: TextStyle(

                                                    color:Color(0xff1A2239),
                                                    fontSize: 30,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.remove_red_eye_outlined,
                                                  color: Color(0xff1A2239),
                                                  size: 24,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Divider(
                                      thickness: 1,
                                      color: Color(0xff1A2239),
                                    ),
                                    Align(
                                      alignment:const AlignmentDirectional(0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children:const [
                                              Icon(
                                                Icons.timer_sharp,
                                                color: Color(0xFFF4DB7E),
                                                size: 40,
                                              ),
                                              Text(
                                                '45',
                                                style:
                                                TextStyle(
                                                  color: Color(0xFFF4DB7E),
                                                  fontSize: 30,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children:const [
                                              Icon(
                                                Icons.fmd_good,
                                                color: Color(0xFF9DA9F1),
                                                size: 40,
                                              ),
                                              Text(
                                                'Hard',
                                                style:
                                                TextStyle(
                                                  fontFamily: 'SegoeMarker',
                                                  color: Color(0xFF9DA9F1),
                                                  fontSize: 30,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children:const [
                                              Icon(
                                                Icons.price_check_outlined,
                                                color: Color(0xFFF4DB7E),
                                                size: 40,
                                              ),
                                              Text(
                                                '150',
                                                style:
                                                TextStyle(
                                                  fontFamily: 'SegoeMarker',
                                                  color: Color(0xFFF4DB7E),
                                                  fontSize: 30,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(1, 0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
                            child: Container(
                              width: 370,
                              height: 440,
                              decoration: BoxDecoration(
                                color:const Color(0xFFE0E0E0),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                        ),
                                        child: Image.asset(
                                          'assets/images/rec.jpg',
                                          width: 370,
                                          height: 293,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment: const AlignmentDirectional(-1, 0),
                                            child: Container(
                                              width: 108,
                                              height: 38,
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFF4DB7E),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(0),
                                                  bottomRight: Radius.circular(0),
                                                  topLeft: Radius.circular(30),
                                                  topRight: Radius.circular(0),
                                                ),
                                              ),
                                              child:const Align(
                                                alignment: AlignmentDirectional(0, 0),
                                                child: Text(
                                                  'Category',
                                                  textAlign: TextAlign.center,
                                                  style:TextStyle(
                                                    fontFamily: 'aldhabi',
                                                    color: Color(0xFFFE693E),
                                                    fontSize: 30,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:const AlignmentDirectional(1, 1),
                                            child: Padding(
                                              padding:const EdgeInsetsDirectional.fromSTEB(0, 210, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:const AlignmentDirectional(1, 1),
                                                    child: Stack(
                                                      alignment:const AlignmentDirectional(1, 0),
                                                      children: [
                                                        Align(
                                                          alignment:const AlignmentDirectional(0, 0),
                                                          child: Padding(
                                                            padding:const EdgeInsetsDirectional.fromSTEB(
                                                                0, 0, 10, 0),
                                                            child: Container(
                                                              width: 178,
                                                              height: 39,
                                                              decoration:const BoxDecoration(
                                                                color: Color(0xFFF1F4F6),
                                                                shape: BoxShape.rectangle,
                                                              ),
                                                              alignment:const AlignmentDirectional(0, 0),
                                                              child:const Align(
                                                                alignment:
                                                                AlignmentDirectional(-1, 0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(10, 0, 0, 0),
                                                                  child: Text(
                                                                    'Rana_Maarii',
                                                                    textAlign: TextAlign.center,
                                                                    style:
                                                                    TextStyle(
                                                                      fontFamily: 'aldhabi',
                                                                      color:
                                                                      Color(0xFFF4DB7E),
                                                                      fontSize: 30,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:const AlignmentDirectional(1, 0),
                                                          child: Container(
                                                            width: 70,
                                                            height: 70,
                                                            clipBehavior: Clip.antiAlias,
                                                            decoration:const BoxDecoration(
                                                              shape: BoxShape.circle,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/rec.jpg',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),

                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const Align(
                                        alignment: AlignmentDirectional(-1, 0),
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 10),
                                          child: Text(
                                            'Name Of recipe',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontFamily: 'SegoeMarker',
                                              color: Color(0xFF1A2239),
                                              fontSize: 37,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:const AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding:const EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: const [
                                              Text(
                                                '18',
                                                style: TextStyle(

                                                  color:Color(0xff1A2239),
                                                  fontSize: 30,
                                                ),
                                              ),
                                              Icon(
                                                Icons.remove_red_eye_outlined,
                                                color: Color(0xff1A2239),
                                                size: 24,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    thickness: 1,
                                    color: Color(0xff1A2239),
                                  ),
                                  Align(
                                    alignment:const AlignmentDirectional(0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children:const [
                                            Icon(
                                              Icons.timer_sharp,
                                              color: Color(0xFFF4DB7E),
                                              size: 40,
                                            ),
                                            Text(
                                              '45',
                                              style:
                                              TextStyle(
                                                color: Color(0xFFF4DB7E),
                                                fontSize: 30,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children:const [
                                            Icon(
                                              Icons.fmd_good,
                                              color: Color(0xFF9DA9F1),
                                              size: 40,
                                            ),
                                            Text(
                                              'Hard',
                                              style:
                                              TextStyle(
                                                fontFamily: 'SegoeMarker',
                                                color: Color(0xFF9DA9F1),
                                                fontSize: 30,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children:const [
                                            Icon(
                                              Icons.price_check_outlined,
                                              color: Color(0xFFF4DB7E),
                                              size: 40,
                                            ),
                                            Text(
                                              '150',
                                              style:
                                              TextStyle(
                                                fontFamily: 'SegoeMarker',
                                                color: Color(0xFFF4DB7E),
                                                fontSize: 30,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(1, 0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
                            child: Container(
                              width: 370,
                              height: 440,
                              decoration: BoxDecoration(
                                color:const Color(0xFFE0E0E0),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                        ),
                                        child: Image.asset(
                                          'assets/images/photo_2023-05-05_17-55-05.jpg',
                                          width: 370,
                                          height: 293,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment: const AlignmentDirectional(-1, 0),
                                            child: Container(
                                              width: 108,
                                              height: 38,
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFF4DB7E),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(0),
                                                  bottomRight: Radius.circular(0),
                                                  topLeft: Radius.circular(30),
                                                  topRight: Radius.circular(0),
                                                ),
                                              ),
                                              child:const Align(
                                                alignment: AlignmentDirectional(0, 0),
                                                child: Text(
                                                  'Category',
                                                  textAlign: TextAlign.center,
                                                  style:TextStyle(
                                                    fontFamily: 'aldhabi',
                                                    color: Color(0xFFFE693E),
                                                    fontSize: 30,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:const AlignmentDirectional(1, 1),
                                            child: Padding(
                                              padding:const EdgeInsetsDirectional.fromSTEB(0, 210, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:const AlignmentDirectional(1, 1),
                                                    child: Stack(
                                                      alignment:const AlignmentDirectional(1, 0),
                                                      children: [
                                                        Align(
                                                          alignment:const AlignmentDirectional(0, 0),
                                                          child: Padding(
                                                            padding:const EdgeInsetsDirectional.fromSTEB(
                                                                0, 0, 10, 0),
                                                            child: Container(
                                                              width: 178,
                                                              height: 39,
                                                              decoration:const BoxDecoration(
                                                                color: Color(0xFFF1F4F6),
                                                                shape: BoxShape.rectangle,
                                                              ),
                                                              alignment:const AlignmentDirectional(0, 0),
                                                              child:const Align(
                                                                alignment:
                                                                AlignmentDirectional(-1, 0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(10, 0, 0, 0),
                                                                  child: Text(
                                                                    'Rana_Maarii',
                                                                    textAlign: TextAlign.center,
                                                                    style:
                                                                    TextStyle(
                                                                      fontFamily: 'aldhabi',
                                                                      color:
                                                                      Color(0xFFF4DB7E),
                                                                      fontSize: 30,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:const AlignmentDirectional(1, 0),
                                                          child: Container(
                                                            width: 70,
                                                            height: 70,
                                                            clipBehavior: Clip.antiAlias,
                                                            decoration:const BoxDecoration(
                                                              shape: BoxShape.circle,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/photo_2023-05-04_17-26-05.jpg',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),

                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const Align(
                                        alignment: AlignmentDirectional(-1, 0),
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 10),
                                          child: Text(
                                            'Name Of recipe',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontFamily: 'SegoeMarker',
                                              color: Color(0xFF1A2239),
                                              fontSize: 37,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:const AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding:const EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: const [
                                              Text(
                                                '18',
                                                style: TextStyle(

                                                  color:Color(0xff1A2239),
                                                  fontSize: 30,
                                                ),
                                              ),
                                              Icon(
                                                Icons.remove_red_eye_outlined,
                                                color: Color(0xff1A2239),
                                                size: 24,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    thickness: 1,
                                    color: Color(0xff1A2239),
                                  ),
                                  Align(
                                    alignment:const AlignmentDirectional(0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children:const [
                                            Icon(
                                              Icons.timer_sharp,
                                              color: Color(0xFFF4DB7E),
                                              size: 40,
                                            ),
                                            Text(
                                              '45',
                                              style:
                                              TextStyle(
                                                color: Color(0xFFF4DB7E),
                                                fontSize: 30,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children:const [
                                            Icon(
                                              Icons.fmd_good,
                                              color: Color(0xFF9DA9F1),
                                              size: 40,
                                            ),
                                            Text(
                                              'Hard',
                                              style:
                                              TextStyle(
                                                fontFamily: 'SegoeMarker',
                                                color: Color(0xFF9DA9F1),
                                                fontSize: 30,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children:const [
                                            Icon(
                                              Icons.price_check_outlined,
                                              color: Color(0xFFF4DB7E),
                                              size: 40,
                                            ),
                                            Text(
                                              '150',
                                              style:
                                              TextStyle(
                                                fontFamily: 'SegoeMarker',
                                                color: Color(0xFFF4DB7E),
                                                fontSize: 30,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),*/

                  const Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                      child: Text(
                        'Newer Recipes',
                        style: TextStyle(
                          fontFamily: 'SegoeMarker',
                          color: Color(0xffFE693E),
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  /*Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                          alignment: const AlignmentDirectional(1, 0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
                            child: Container(
                              width: 370,
                              height: 440,
                              decoration: BoxDecoration(
                                color:const Color(0xFFE0E0E0),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                        ),
                                        child: Image.asset(
                                          'assets/images/rec.jpg',
                                          width: 370,
                                          height: 293,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment: const AlignmentDirectional(-1, 0),
                                            child: Container(
                                              width: 108,
                                              height: 38,
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFF4DB7E),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(0),
                                                  bottomRight: Radius.circular(0),
                                                  topLeft: Radius.circular(30),
                                                  topRight: Radius.circular(0),
                                                ),
                                              ),
                                              child:const Align(
                                                alignment: AlignmentDirectional(0, 0),
                                                child: Text(
                                                  'Category',
                                                  textAlign: TextAlign.center,
                                                  style:TextStyle(
                                                    fontFamily: 'aldhabi',
                                                    color: Color(0xFFFE693E),
                                                    fontSize: 30,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:const AlignmentDirectional(1, 1),
                                            child: Padding(
                                              padding:const EdgeInsetsDirectional.fromSTEB(0, 210, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:const AlignmentDirectional(1, 1),
                                                    child: Stack(
                                                      alignment:const AlignmentDirectional(1, 0),
                                                      children: [
                                                        Align(
                                                          alignment:const AlignmentDirectional(0, 0),
                                                          child: Padding(
                                                            padding:const EdgeInsetsDirectional.fromSTEB(
                                                                0, 0, 10, 0),
                                                            child: Container(
                                                              width: 178,
                                                              height: 39,
                                                              decoration:const BoxDecoration(
                                                                color: Color(0xFFF1F4F6),
                                                                shape: BoxShape.rectangle,
                                                              ),
                                                              alignment:const AlignmentDirectional(0, 0),
                                                              child:const Align(
                                                                alignment:
                                                                AlignmentDirectional(-1, 0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(10, 0, 0, 0),
                                                                  child: Text(
                                                                    'Rana_Maarii',
                                                                    textAlign: TextAlign.center,
                                                                    style:
                                                                    TextStyle(
                                                                      fontFamily: 'aldhabi',
                                                                      color:
                                                                      Color(0xFFF4DB7E),
                                                                      fontSize: 30,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:const AlignmentDirectional(1, 0),
                                                          child: Container(
                                                            width: 70,
                                                            height: 70,
                                                            clipBehavior: Clip.antiAlias,
                                                            decoration:const BoxDecoration(
                                                              shape: BoxShape.circle,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/rec.jpg',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),

                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const Align(
                                        alignment: AlignmentDirectional(-1, 0),
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 10),
                                          child: Text(
                                            'Name Of recipe',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontFamily: 'SegoeMarker',
                                              color: Color(0xFF1A2239),
                                              fontSize: 37,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:const AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding:const EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: const [
                                              Text(
                                                '18',
                                                style: TextStyle(

                                                  color:Color(0xff1A2239),
                                                  fontSize: 30,
                                                ),
                                              ),
                                              Icon(
                                                Icons.remove_red_eye_outlined,
                                                color: Color(0xff1A2239),
                                                size: 24,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    thickness: 1,
                                    color: Color(0xff1A2239),
                                  ),
                                  Align(
                                    alignment:const AlignmentDirectional(0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children:const [
                                            Icon(
                                              Icons.timer_sharp,
                                              color: Color(0xFFF4DB7E),
                                              size: 40,
                                            ),
                                            Text(
                                              '45',
                                              style:
                                              TextStyle(
                                                color: Color(0xFFF4DB7E),
                                                fontSize: 30,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children:const [
                                            Icon(
                                              Icons.fmd_good,
                                              color: Color(0xFF9DA9F1),
                                              size: 40,
                                            ),
                                            Text(
                                              'Hard',
                                              style:
                                              TextStyle(
                                                fontFamily: 'SegoeMarker',
                                                color: Color(0xFF9DA9F1),
                                                fontSize: 30,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children:const [
                                            Icon(
                                              Icons.price_check_outlined,
                                              color: Color(0xFFF4DB7E),
                                              size: 40,
                                            ),
                                            Text(
                                              '150',
                                              style:
                                              TextStyle(
                                                fontFamily: 'SegoeMarker',
                                                color: Color(0xFFF4DB7E),
                                                fontSize: 30,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      Align(
                        alignment: const AlignmentDirectional(1, 0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
                          child: Container(
                            width: 370,
                            height: 440,
                            decoration: BoxDecoration(
                              color:const Color(0xFFE0E0E0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      child: Image.asset(
                                        'assets/images/rec.jpg',
                                        width: 370,
                                        height: 293,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment: const AlignmentDirectional(-1, 0),
                                          child: Container(
                                            width: 108,
                                            height: 38,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFFF4DB7E),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(0),
                                                bottomRight: Radius.circular(0),
                                                topLeft: Radius.circular(30),
                                                topRight: Radius.circular(0),
                                              ),
                                            ),
                                            child:const Align(
                                              alignment: AlignmentDirectional(0, 0),
                                              child: Text(
                                                'Category',
                                                textAlign: TextAlign.center,
                                                style:TextStyle(
                                                  fontFamily: 'aldhabi',
                                                  color: Color(0xFFFE693E),
                                                  fontSize: 30,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:const AlignmentDirectional(1, 1),
                                          child: Padding(
                                            padding:const EdgeInsetsDirectional.fromSTEB(0, 210, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:const AlignmentDirectional(1, 1),
                                                  child: Stack(
                                                    alignment:const AlignmentDirectional(1, 0),
                                                    children: [
                                                      Align(
                                                        alignment:const AlignmentDirectional(0, 0),
                                                        child: Padding(
                                                          padding:const EdgeInsetsDirectional.fromSTEB(
                                                              0, 0, 10, 0),
                                                          child: Container(
                                                            width: 178,
                                                            height: 39,
                                                            decoration:const BoxDecoration(
                                                              color: Color(0xFFF1F4F6),
                                                              shape: BoxShape.rectangle,
                                                            ),
                                                            alignment:const AlignmentDirectional(0, 0),
                                                            child:const Align(
                                                              alignment:
                                                              AlignmentDirectional(-1, 0),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(10, 0, 0, 0),
                                                                child: Text(
                                                                  'Rana_Maarii',
                                                                  textAlign: TextAlign.center,
                                                                  style:
                                                                  TextStyle(
                                                                    fontFamily: 'aldhabi',
                                                                    color:
                                                                    Color(0xFFF4DB7E),
                                                                    fontSize: 30,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:const AlignmentDirectional(1, 0),
                                                        child: Container(
                                                          width: 70,
                                                          height: 70,
                                                          clipBehavior: Clip.antiAlias,
                                                          decoration:const BoxDecoration(
                                                            shape: BoxShape.circle,
                                                          ),
                                                          child: Image.asset(
                                                            'assets/images/rec.jpg',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Align(
                                      alignment: AlignmentDirectional(-1, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 10),
                                        child: Text(
                                          'Name Of recipe',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: 'SegoeMarker',
                                            color: Color(0xFF1A2239),
                                            fontSize: 37,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:const AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding:const EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '18',
                                              style: TextStyle(

                                                color:Color(0xff1A2239),
                                                fontSize: 30,
                                              ),
                                            ),
                                            Icon(
                                              Icons.remove_red_eye_outlined,
                                              color: Color(0xff1A2239),
                                              size: 24,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  thickness: 1,
                                  color: Color(0xff1A2239),
                                ),
                                Align(
                                  alignment:const AlignmentDirectional(0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children:const [
                                          Icon(
                                            Icons.timer_sharp,
                                            color: Color(0xFFF4DB7E),
                                            size: 40,
                                          ),
                                          Text(
                                            '45',
                                            style:
                                            TextStyle(
                                              color: Color(0xFFF4DB7E),
                                              fontSize: 30,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children:const [
                                          Icon(
                                            Icons.fmd_good,
                                            color: Color(0xFF9DA9F1),
                                            size: 40,
                                          ),
                                          Text(
                                            'Hard',
                                            style:
                                            TextStyle(
                                              fontFamily: 'SegoeMarker',
                                              color: Color(0xFF9DA9F1),
                                              fontSize: 30,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children:const [
                                          Icon(
                                            Icons.price_check_outlined,
                                            color: Color(0xFFF4DB7E),
                                            size: 40,
                                          ),
                                          Text(
                                            '150',
                                            style:
                                            TextStyle(
                                              fontFamily: 'SegoeMarker',
                                              color: Color(0xFFF4DB7E),
                                              fontSize: 30,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(1, 0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
                          child: Container(
                            width: 370,
                            height: 440,
                            decoration: BoxDecoration(
                              color:const Color(0xFFE0E0E0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      child: Image.asset(
                                        'assets/images/rec.jpg',
                                        width: 370,
                                        height: 293,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment: const AlignmentDirectional(-1, 0),
                                          child: Container(
                                            width: 108,
                                            height: 38,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFFF4DB7E),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(0),
                                                bottomRight: Radius.circular(0),
                                                topLeft: Radius.circular(30),
                                                topRight: Radius.circular(0),
                                              ),
                                            ),
                                            child:const Align(
                                              alignment: AlignmentDirectional(0, 0),
                                              child: Text(
                                                'Category',
                                                textAlign: TextAlign.center,
                                                style:TextStyle(
                                                  fontFamily: 'aldhabi',
                                                  color: Color(0xFFFE693E),
                                                  fontSize: 30,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:const AlignmentDirectional(1, 1),
                                          child: Padding(
                                            padding:const EdgeInsetsDirectional.fromSTEB(0, 210, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:const AlignmentDirectional(1, 1),
                                                  child: Stack(
                                                    alignment:const AlignmentDirectional(1, 0),
                                                    children: [
                                                      Align(
                                                        alignment:const AlignmentDirectional(0, 0),
                                                        child: Padding(
                                                          padding:const EdgeInsetsDirectional.fromSTEB(
                                                              0, 0, 10, 0),
                                                          child: Container(
                                                            width: 178,
                                                            height: 39,
                                                            decoration:const BoxDecoration(
                                                              color: Color(0xFFF1F4F6),
                                                              shape: BoxShape.rectangle,
                                                            ),
                                                            alignment:const AlignmentDirectional(0, 0),
                                                            child:const Align(
                                                              alignment:
                                                              AlignmentDirectional(-1, 0),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(10, 0, 0, 0),
                                                                child: Text(
                                                                  'Rana_Maarii',
                                                                  textAlign: TextAlign.center,
                                                                  style:
                                                                  TextStyle(
                                                                    fontFamily: 'aldhabi',
                                                                    color:
                                                                    Color(0xFFF4DB7E),
                                                                    fontSize: 30,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:const AlignmentDirectional(1, 0),
                                                        child: Container(
                                                          width: 70,
                                                          height: 70,
                                                          clipBehavior: Clip.antiAlias,
                                                          decoration:const BoxDecoration(
                                                            shape: BoxShape.circle,
                                                          ),
                                                          child: Image.asset(
                                                            'assets/images/rec.jpg',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Align(
                                      alignment: AlignmentDirectional(-1, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 10),
                                        child: Text(
                                          'Name Of recipe',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: 'SegoeMarker',
                                            color: Color(0xFF1A2239),
                                            fontSize: 37,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:const AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding:const EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '18',
                                              style: TextStyle(

                                                color:Color(0xff1A2239),
                                                fontSize: 30,
                                              ),
                                            ),
                                            Icon(
                                              Icons.remove_red_eye_outlined,
                                              color: Color(0xff1A2239),
                                              size: 24,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  thickness: 1,
                                  color: Color(0xff1A2239),
                                ),
                                Align(
                                  alignment:const AlignmentDirectional(0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children:const [
                                          Icon(
                                            Icons.timer_sharp,
                                            color: Color(0xFFF4DB7E),
                                            size: 40,
                                          ),
                                          Text(
                                            '45',
                                            style:
                                            TextStyle(
                                              color: Color(0xFFF4DB7E),
                                              fontSize: 30,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children:const [
                                          Icon(
                                            Icons.fmd_good,
                                            color: Color(0xFF9DA9F1),
                                            size: 40,
                                          ),
                                          Text(
                                            'Hard',
                                            style:
                                            TextStyle(
                                              fontFamily: 'SegoeMarker',
                                              color: Color(0xFF9DA9F1),
                                              fontSize: 30,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children:const [
                                          Icon(
                                            Icons.price_check_outlined,
                                            color: Color(0xFFF4DB7E),
                                            size: 40,
                                          ),
                                          Text(
                                            '150',
                                            style:
                                            TextStyle(
                                              fontFamily: 'SegoeMarker',
                                              color: Color(0xFFF4DB7E),
                                              fontSize: 30,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),*/
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}