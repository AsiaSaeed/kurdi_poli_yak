import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kurdi_poli_yak/painting.dart';
import 'package:kurdi_poli_yak/select_letter.dart';


class ThreePage extends StatelessWidget {
  void home() {

  }
  void right() {

  }
  void left() {

  }
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('d$soundNumber.m4a');
  }
  void playSound1() {
    final player = AudioCache();
    player.play('d.m4a');
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
                      margin: EdgeInsets.fromLTRB(10, 14, 0, 5),
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
                      margin: EdgeInsets.fromLTRB(168.0, 14, 5, 5),
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
                    width: 430,
                    height: 35,
                    margin:EdgeInsets.fromLTRB(280, 15, 10, 0) ,
                    decoration: BoxDecoration(

                      gradient: LinearGradient(
                          colors: [
                            Color(0xffffffff),

                            //Color(0xffFCCEA0),
                            Color(0xffFCCEB3),
                            Color(0xffFAB890),


                          ]
                      ),
                    ),

                    child:Row(children: <Widget>[



                      Text('دەڵێم',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),







                    ],)
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(70.0, 30.0, 70.0, 0.0),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/sound.png',width: 40,height: 40,),
                        ),
                        onPressed: () {
                          playSound(1);
                        },
                      ),),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 50, 0),
                        child:Text('د',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 37,
                              fontStyle: FontStyle.italic
                          ),)

                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(70.0, 20.0, 70.0, 0.0),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/sound.png',width: 40,height: 40,),
                        ),
                        onPressed: () {
                          playSound(2);
                        },
                      ),),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 30, 50, 0),
                        child:Text('د',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 37,
                              fontStyle: FontStyle.italic
                          ),)

                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(70.0, 30.0, 70.0, 0.0),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/sound.png',width: 40,height: 40,),
                        ),
                        onPressed: () {
                          playSound(3);
                        },
                      ),),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 30, 50, 0),
                        child:Text('د',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 37,
                              fontStyle: FontStyle.italic
                          ),)

                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.fromLTRB(20.0, 30.0, 120.0, 0.0),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/leftt.png',width: 38,height: 38,),
                        ),
                        onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Painting()));
                        },
                      ),),
                    new Container(
                      margin: EdgeInsets.fromLTRB(20.0, 30.0, 10.0, 0.0),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/rightt.png',width: 38,height: 38,),
                        ),
                        onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Select_letter()));
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