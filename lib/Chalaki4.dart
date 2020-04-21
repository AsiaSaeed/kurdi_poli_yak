import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kurdi_poli_yak/select.dart';
import 'package:pimp_my_button/pimp_my_button.dart';

import 'FivePage.dart';
//import 'five.dart';
//import 'three.dart';
class SixPage extends StatelessWidget{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeButtonBackground(),
    );
  }
}
class ChangeButtonBackground extends StatefulWidget {
  @override
  ChangeButtonBackgroundState createState() {
    return new ChangeButtonBackgroundState();
  }
}

class ChangeButtonBackgroundState extends State<ChangeButtonBackground> {
  List<Color> colors1 = [ //Get list of colors
    Colors.white,
    Colors.green,
  ];
  int currentIndex1 = 0;
  List<Color> colors2 = [ //Get list of colors
    Colors.white,
    Colors.redAccent,
  ];

  int currentIndex2 = 0;
  List<Color> colors3 = [ //Get list of colors
    Colors.white,
    Colors.redAccent,
  ];

  int currentIndex3 = 0;
  List<Color> colors4 = [ //Get list of colors
    Colors.white,
    Colors.redAccent,
  ];
  int currentIndex4 = 0;

  List<Color> colors5 = [ //Get list of colors
    Colors.white,
    Colors.green,
  ];
  int currentIndex5 = 0;
  List<Color> colors6 = [ //Get list of colors
    Colors.white,
    Colors.redAccent,
  ];
  int currentIndex6 = 0;
  List<Color> colors7 = [ //Get list of colors
    Colors.white,
    Colors.redAccent,
  ];
  int currentIndex7 = 0;
  List<Color> colors8 = [ //Get list of colors
    Colors.white,
    Colors.redAccent,
  ];
  int currentIndex8 = 0;
  List<Color> colors9 = [ //Get list of colors
    Colors.white,
    Colors.green,
  ];
  int currentIndex9 = 0;
  List<Color> colors10 = [ //Get list of colors
    Colors.white,
    Colors.green,
  ];
  int currentIndex10 = 0;
  List<Color> colors11 = [ //Get list of colors
    Colors.white,
    Colors.redAccent,
  ];
  int currentIndex11 = 0;
  List<Color> colors12 = [ //Get list of colors
    Colors.white,
    Colors.redAccent,
  ];
  int currentIndex12 = 0;
  void home() {

  }
  void right() {

  }
  void left() {

  }
  void playRight() {
    final player = AudioCache();
    player.play('right.mp3');
  }

  void sound() {
    final player = AudioCache();
    player.play('d.m4a');
  }
  void   SoundParda() {
    final player = AudioCache();
    player.play('parda5.m4a');
  }
  void   SoundDarga() {
    final player = AudioCache();
    player.play('darga3.m4a');
  }
  void   Soundpanjara() {
    final player = AudioCache();
    player.play('panjara4.m4a');
  }
  void   SoundAmad() {
    final player = AudioCache();
    player.play('amad1.m4a');
  }
  ButtonParda1() {
    int colorCount1 = colors1.length;
    setState(() {
      if (currentIndex1 == colorCount1 - 1) {
        currentIndex1 = 0;
      } else {
        currentIndex1 += 1;
      }
      playRight();
    });
  }
  ButtonParda2() {
    int colorCount2 = colors2.length;
    setState(() {
      if (currentIndex2 == colorCount2 - 1) {
        currentIndex2 = 0;
      } else {
        currentIndex2 += 1;
      }
    });
  }
  ButtonParda3() {
    int colorCount3 = colors3.length;
    setState(() {
      if (currentIndex3 == colorCount3 - 1) {
        currentIndex3= 0;
      } else {
        currentIndex3 += 1;
      }
    });
  }
  ButtonAmad1() {
    int colorCount4 = colors4.length;

    setState(() {
      if (currentIndex4 == colorCount4 - 1) {
        currentIndex4 = 0;
      } else {
        currentIndex4 += 1;
      }
    });
  }
  ButtonAmad2() {
    int colorCount5 = colors5.length;

    setState(() {
      if (currentIndex5 == colorCount5 - 1) {
        currentIndex5 = 0;
      } else {
        currentIndex5 += 1;
      }
      playRight();
    });
  }
  ButtonAmad3() {
    int colorCount6 = colors6.length;

    setState(() {
      if (currentIndex6 == colorCount6 - 1) {
        currentIndex6 = 0;
      } else {
        currentIndex6 += 1;
      }
    });
  }
  ButtonDewar1() {
    int colorCount7 = colors7.length;

    setState(() {
      if (currentIndex7 == colorCount7 - 1) {
        currentIndex7 = 0;
      } else {
        currentIndex7 += 1;
      }
    });
  }
  ButtonDewar2() {
    int colorCount8 = colors8.length;

    setState(() {
      if (currentIndex8 == colorCount8- 1) {
        currentIndex8 = 0;
      } else {
        currentIndex8 += 1;
      }
      playRight();
    });
  }
  ButtonDewar3() {
    int colorCount9 = colors9.length;

    setState(() {
      if (currentIndex9 == colorCount9 - 1) {
        currentIndex9 = 0;
      } else {
        currentIndex9 += 1;
      }
      playRight();
    });
  }
  ButtonPrd1() {
    int colorCount10 = colors10.length;

    setState(() {
      if (currentIndex10 == colorCount10 - 1) {
        currentIndex10 = 0;
      } else {
        currentIndex10 += 1;
      }
    });
  }
  ButtonPrd2() {
    int colorCount11= colors11.length;

    setState(() {
      if (currentIndex11 == colorCount11 - 1) {
        currentIndex11 = 0;
      } else {
        currentIndex11 += 1;
      }
    });
  }
  ButtonPrd3() {
    int colorCount12 = colors12.length;

    setState(() {
      if (currentIndex12 == colorCount12 - 1) {
        currentIndex12 = 0;
      } else {
        currentIndex12 += 1;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
              children: <Widget>[
                Row(children: <Widget>[Container(

                  decoration: new BoxDecoration(


                      color: new Color(0xFF43B5F5) ),

                  child: Row(children: <Widget>[

                    new Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 5),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/sound.png',width: 35,height: 35,),
                        ),
                        onPressed: () {
                          //  playSound();
                        },
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.fromLTRB(168.0, 0, 5, 5),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/homepage.png',width: 35,height: 35,),
                        ),
                        onPressed: () {
                          //  playSound();
                        },
                      ),),
                  ],),

                )],),
                SizedBox(height: 7,),
                RatingBar(
                  initialRating: 7,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 12,
                  ratingWidget: RatingWidget(
                    full:Image.asset('assets/nutsc.png',width: 5,height: 5,) ,

                    empty:Image.asset('assets/nutscl.png',width: 5,height: 5,) ,
                  ),
                  itemPadding: EdgeInsets.all(0),
                  itemSize: 26,
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),



                Container(
                  margin:EdgeInsets.fromLTRB(25, 0,0, 0) ,
                  child: Text('چالاکی (٤)',style:TextStyle(fontWeight: FontWeight.bold ,fontSize: 20,color: Color(0xff0A7478 ),),),),



                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 180,
                          width: 180,
                          child:   Card(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child:  Image.asset('assets/bard.png',width: 120,height: 110,),
                                ),
                                Container(
                                  child: Text(
                                    '.....بەر',style:TextStyle(fontSize: 16) ,textAlign: TextAlign.center,
                                  ),),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.fromLTRB(25.0, 2.0, 5.0, 0.0),
                                      height: 30,
                                      width: 30,

                                      child: FlatButton(
                                        onPressed: ButtonParda1,
                                        child:  Text('د',style:TextStyle(fontSize: 16) ,textAlign: TextAlign.center,),
                                        color: colors1[currentIndex1], //specify background color  of button from our list of colors
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0),side: BorderSide(
                                          color: Colors.blue,
                                          width: 1,
                                        ),),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 0.0),
                                      height: 30,
                                      width: 30,

                                      child: FlatButton(
                                        onPressed: ButtonParda2,
                                        child:  Text('ر',style:TextStyle(fontSize: 16) ,textAlign: TextAlign.center,),
                                        color: colors2[currentIndex2], //specify background color  of button from our list of colors
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0),side: BorderSide(
                                          color: Colors.blue,
                                          width: 1,
                                        ),),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 0.0),
                                      height: 30,
                                      width: 30,

                                      child: FlatButton(
                                        onPressed: ButtonParda3,
                                        child:  Text('ت',style:TextStyle(fontSize: 16) ,textAlign: TextAlign.center,),
                                        color: colors3[currentIndex3], //specify background color  of button from our list of colors
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0),side: BorderSide(
                                          color: Colors.blue,
                                          width: 1,
                                        ),),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 180,
                          width: 180,
                          child:   Card(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child:  Image.asset('assets/dam.png',width: 120,height: 110,),
                                ),
                                Container(
                                  child: Text(
                                    'ەم....',style:TextStyle(fontSize: 16) ,textAlign: TextAlign.center,
                                  ),),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.fromLTRB(25.0, 2.0, 5.0, 0.0),
                                      height: 30,
                                      width: 30,

                                      child: FlatButton(
                                        onPressed: ButtonAmad1,
                                        child:  Text('ی',style:TextStyle(fontSize: 16) ,textAlign: TextAlign.center,),
                                        color: colors4[currentIndex4], //specify background color  of button from our list of colors
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0),side: BorderSide(
                                          color: Colors.blue,
                                          width: 1,
                                        ),),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 0.0),
                                      height: 30,
                                      width: 30,

                                      child: FlatButton(
                                        onPressed: ButtonAmad2,
                                        child:  Text('د',style:TextStyle(fontSize: 16) ,textAlign: TextAlign.center,),
                                        color: colors5[currentIndex5], //specify background color  of button from our list of colors
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0),side: BorderSide(
                                          color: Colors.blue,
                                          width: 1,
                                        ),),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 0.0),
                                      height: 30,
                                      width: 30,

                                      child: FlatButton(
                                        onPressed: ButtonAmad3,
                                        child:  Text('ۆ',style:TextStyle(fontSize: 16) ,textAlign: TextAlign.center,),
                                        color: colors6[currentIndex6], //specify background color  of button from our list of colors
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0),side: BorderSide(
                                          color: Colors.blue,
                                          width: 1,
                                        ),),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 180,
                          width: 180,
                          child:   Card(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child:  Image.asset('assets/prd.png',width: 120,height: 110,),
                                ),
                                Container(
                                  child: Text(
                                    '.....پر',style:TextStyle(fontSize: 16) ,textAlign: TextAlign.center,
                                  ),),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.fromLTRB(25.0, 2.0, 5.0, 0.0),
                                      height: 30,
                                      width: 30,

                                      child: FlatButton(
                                        onPressed: ButtonDewar1,
                                        child:  Text('ە',style:TextStyle(fontSize: 16) ,textAlign: TextAlign.center,),
                                        color: colors7[currentIndex7], //specify background color  of button from our list of colors
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0),side: BorderSide(
                                          color: Colors.blue,
                                          width: 1,
                                        ),),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 0.0),
                                      height: 30,
                                      width: 30,

                                      child: FlatButton(
                                        onPressed: ButtonDewar2,
                                        child:  Text('پ',style:TextStyle(fontSize: 16) ,textAlign: TextAlign.center,),
                                        color: colors8[currentIndex8], //specify background color  of button from our list of colors
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0),side: BorderSide(
                                          color: Colors.blue,
                                          width: 1,
                                        ),),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 0.0),
                                      height: 30,
                                      width: 30,

                                      child: FlatButton(
                                        onPressed:ButtonDewar3,
                                        child:  Text('د',style:TextStyle(fontSize: 16) ,textAlign: TextAlign.center,),
                                        color: colors9[currentIndex9], //specify background color  of button from our list of colors
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0),side: BorderSide(
                                          color: Colors.blue,
                                          width: 1,
                                        ),),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 180,
                          width: 180,
                          child:   Card(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child:  Image.asset('assets/dewar.png',width: 120,height: 110,),
                                ),
                                Container(
                                  child: Text(
                                    'یوار....',style:TextStyle(fontSize: 16) ,textAlign: TextAlign.center,
                                  ),),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.fromLTRB(25.0, 2.0, 5.0, 0.0),
                                      height: 30,
                                      width: 30,

                                      child: FlatButton(
                                        onPressed: ButtonPrd1,
                                        child:  Text('د',style:TextStyle(fontSize: 16) ,textAlign: TextAlign.center,),
                                        color: colors10[currentIndex10], //specify background color  of button from our list of colors
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0),side: BorderSide(
                                          color: Colors.blue,
                                          width: 1,
                                        ),),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 0.0),
                                      height: 30,
                                      width: 30,

                                      child: FlatButton(
                                        onPressed: ButtonPrd2,
                                        child:  Text('ک',style:TextStyle(fontSize: 16) ,textAlign: TextAlign.center,),
                                        color: colors11[currentIndex11], //specify background color  of button from our list of colors
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0),side: BorderSide(
                                          color: Colors.blue,
                                          width: 1,
                                        ),),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 0.0),
                                      height: 30,
                                      width: 30,

                                      child: FlatButton(
                                        onPressed: ButtonPrd3,
                                        child:  Text('ت',style:TextStyle(fontSize: 16) ,textAlign: TextAlign.center,),
                                        color: colors12[currentIndex12], //specify background color  of button from our list of colors
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0),side: BorderSide(
                                          color: Colors.blue,
                                          width: 1,
                                        ),),
                                      ),
                                    ),
                                  ],
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
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.fromLTRB(20.0, 5.0, 120.0, 0.0),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/leftt.png',width: 30,height: 30,),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>FivePage()));
                        },
                      ),),
                    new Container(
                      margin: EdgeInsets.fromLTRB(20.0, 5.0, 10.0, 0.0),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/rightt.png',width: 30,height: 30,),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Select()));
                        },
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
