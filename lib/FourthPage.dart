import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:kurdi_poli_yak/select_letter.dart';
import 'package:pimp_my_button/pimp_my_button.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'ThreePage.dart';
import 'FivePage.dart';
import 'drag.dart';
class FourthPage extends StatelessWidget {
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
    Colors.green,
  ];

  int currentIndex2 = 0;
  List<Color> colors3 = [ //Get list of colors
    Colors.white,
    Colors.green,
  ];

  int currentIndex3 = 0;
  List<Color> colors4 = [ //Get list of colors
    Colors.white,
    Colors.green,
  ];

  int currentIndex4 = 0;

  _onChanged() { //update with a new color when the user taps button


    //setState(() => (_currentIndex == _colorCount - 1) ? _currentIndex = 1 : _currentIndex += 1);
  }

  void home() {

  }
  void right() {

  }
  void left() {

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
  ButtonParda() {
    int colorCount1 = colors1.length;

    setState(() {
      if (currentIndex1 == colorCount1 - 1) {
        currentIndex1 = 0;
      } else {
        currentIndex1 += 1;
      }

    });
  }
  void playSoundd() {
    final player = AudioCache();
    player.play('right.mp3');
  }
  ButtonAmad() {
    int colorCount4 = colors4.length;

    setState(() {
      if (currentIndex4 == colorCount4 - 1) {
        currentIndex4 = 0;
      } else {
        currentIndex4 += 1;
      }
      playSoundd();
    });
  }
  ButtonPanjara() {
    int colorCount3 = colors3.length;

    setState(() {
      if (currentIndex3 == colorCount3 - 1) {
        currentIndex3 = 0;
      } else {
        currentIndex3 += 1;
      }
      playSoundd();
    });
  }
  ButtonDarga() {
    int colorCount2 = colors2.length;

    setState(() {
      if (currentIndex2 == colorCount2 - 1) {
        currentIndex2 = 0;
      } else {
        currentIndex2 += 1;
      }
      playSoundd();
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
                    width: 400,
                    height: 22,
                    margin:EdgeInsets.fromLTRB(240,0, 10, 0) ,
                    decoration: BoxDecoration(

                      gradient: LinearGradient(
                          colors: [
                            Color(0xffffffff),
                            Color(0xffffffff),
                            //Color(0xffFCCEA0),
                            Color(0xffFCCEB3),
                            Color(0xffFAB890),


                          ]
                      ),
                    ),

                    child:Row(children: <Widget>[



                      Text('ناوی وێنەکان بڵێ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 15),),




                    ],)
                ),

                Container(
                    width: 400,
                    height: 23,
                    margin:EdgeInsets.fromLTRB(72, 1, 10, 4) ,
                    decoration: BoxDecoration(

                      gradient: LinearGradient(
                          colors: [
                            Color(0xffffffff),
                            Color(0xffffffff),
                            //Color(0xffFCCEA0),
                            Color(0xffFCCEB3),
                            Color(0xffFAB890),


                          ]
                      ),
                    ),

                    child:Row(children: <Widget>[



                      Text('ی تێدایە، بەچەماوەیەک دەوربدە',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14),),
                      Text('(',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14),),

                      Text('د',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.red),),


                      Text(')ئەم وشەیەی ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14),),

                    ],)
                ),

                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 172,
                          width: 180,
                          child:   Card(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child:  Image.asset('assets/panjara.png',width: 120,height: 120,),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.fromLTRB(50.0, 15.0, 10.0, 0.0),
                                      height: 25,
                                      width: 90,
                                      child:  PimpedButton(
                                        particle: DemoParticle(),
                                        pimpedWidgetBuilder: (context, controller) {
                                          return RaisedButton(
                                              child: Text('پەنجەرە',
                                                style: TextStyle(fontSize: 14),),
                                              shape: new RoundedRectangleBorder(
                                                borderRadius: new BorderRadius
                                                    .circular(10.0),
                                                side: BorderSide(
                                                  color: Colors.black,
                                                  width: 1,
                                                ),),
                                              onPressed:(){

                                                controller .forward(from: 0.0);
                                                ButtonParda();

                                                //specify background color  of button from our list of colors
                                              }  );
                                        },),
                                    ),



                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 172,
                          width: 180,
                          child:   Card(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child:  Image.asset('assets/darga.png',width: 120,height: 120,),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.fromLTRB(50.0, 15.0, 10.0, 0.0),
                                      height: 25,


                                      width: 90,
                                      child: FlatButton(
                                        onPressed: ButtonDarga,
                                        child:  Text('دەرگا',style:TextStyle(fontSize:14) ,),                                        color: colors2[currentIndex2], //specify background color  of button from our list of colors
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0),side: BorderSide(
                                          color: Colors.black,                                          width: 1,
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
                          height: 172,
                          width: 180,
                          child:   Card(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child:  Image.asset('assets/parda.png',width: 120,height: 120,),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.fromLTRB(50.0, 15.0, 10.0, 0.0),
                                      height: 25,
                                      width: 90,
                                      child: FlatButton(
                                        onPressed: ButtonPanjara,
                                        child:  Text('پەردە',style:TextStyle(fontSize:14) ,),                                        color: colors3[currentIndex3], //specify background color  of button from our list of colors
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0),side: BorderSide(
                                          color: Colors.black,
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
                          height: 172,
                          width: 180,
                          child:   Card(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child:  Image.asset('assets/amadd.png',width: 120,height: 120,),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.fromLTRB(50.0, 15.0, 10.0, 0.0),
                                      height: 25,
                                      width: 90,
                                      child: FlatButton(
                                        onPressed: ButtonAmad,
                                        child:  Text('ئامەد',style:TextStyle(fontSize:14) ,),
                                        color: colors4[currentIndex4], //specify background color  of button from our list of colors
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0),side: BorderSide(
                                          color: Colors.black,
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
                      margin: EdgeInsets.fromLTRB(20.0, 12.0, 120.0, 0.0),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/leftt.png',width: 40,height: 40,),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Select_letter()));
                        },
                      ),),
                    new Container(
                      margin: EdgeInsets.fromLTRB(20.0, 12.0, 10.0, 0.0),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/rightt.png',width: 40,height: 40,),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Drag()));
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