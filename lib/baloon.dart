

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kurdi_poli_yak/painting.dart';
import 'package:kurdi_poli_yak/select.dart';
import 'package:kurdi_poli_yak/select_letter.dart';

void main() => runApp(Baloon());

class Baloon extends StatelessWidget {
  get child => null;

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note1.m4a');
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      home:  ChangeButtonBackground(),
    );
  }

}

class ChangeButtonBackground extends StatefulWidget {
  @override
  ChangeButtonBackgroundState createState() {
    return new ChangeButtonBackgroundState();
  }

}
void playSound() {
  final player = AudioCache();
  player.play('right.mp3');
}

void playwrong() {
  final player = AudioCache();
  player.play('wrong.mp3');
}
class ChangeButtonBackgroundState extends State<ChangeButtonBackground> {
  List<Color> _colors1= [
    Colors.transparent,//Get list of colors
    Colors.green,

  ];

  List<Color> _colors2= [
    Colors.transparent,//Get list of colors
    Colors.green,


  ];
  void playSoundd() {
    final player = AudioCache();
    player.play('right.mp3');
  }
  int _currentIndex1 = 0;

  _onChanged1() { //update with a new color when the user taps button
    playSoundd();

    setState(() {

      _currentIndex1 =1;


    });


    //setState(() => (_currentIndex == _colorCount - 1) ? _currentIndex = 1 : _currentIndex += 1);
  }
  int  _currentIndex2 = 0;
  _onChanged2() {
    //update with a new color when the user taps button
    playSoundd();

    setState(() {
      _currentIndex2 = 1;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(

      body:


      Column(

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
              margin:EdgeInsets.fromLTRB(22, 8,0, 0) ,
              child: Text('چالاکی (٢)',style:TextStyle(fontWeight: FontWeight.bold ,fontSize: 20,color: Color(0xff0A7478 ),),),),


            Container(
                width: 400,
                height: 35,
                margin:EdgeInsets.fromLTRB(160, 30, 10, 0) ,
                decoration: BoxDecoration(

                  gradient: LinearGradient(
                      colors: [
                        Color(0xffF3FFFF),
                        Color(0xffF3FFFF),
                        //Color(0xffFCCEA0),



                      ]
                  ),
                ),

                child:Row(children: <Widget>[



                  Container(
                      margin: EdgeInsets.fromLTRB(0,0, 0, 10),
                      child: Text(' ڕەنگەکانیان ببینەو بڵێ ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),)),


                ],)
            ),


            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(0,10, 0, 0),
                width: 400,
                height: 230,
                color: Color(0xffB3E9F9),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: -190,
                      right: 0,
                      child:FlatButton(
                        child: Container(

                          child: Image.asset('assets/bp.png',width: 100,
                            height: 600,),
                        ),
                        onPressed: () {
                          playwrong();
                        },
                      ),


                    ),
                    Positioned(
                      top: 140,
                      right:40,
                      child:FlatButton(
                        child: Container(

                          child: Image.asset('assets/bm.png',width: 100,
                            height: 100,),
                        ),
                        onPressed: () {
                          playwrong();
                        },
                      ),


                    ),
                    Positioned(
                      top: 40,
                      right:100,
                      child:FlatButton(
                        child: Container(

                          child: Image.asset('assets/by.png',width: 85,
                            height: 200,),
                        ),
                        onPressed: () {
                          playwrong();
                        },
                      ),


                    ),
                    Positioned(
                      top: 110,
                      right:140,
                      child:FlatButton(
                        child: Container(

                          child: Image.asset('assets/bgreen.png',width: 70,
                            height: 150,),
                        ),
                        onPressed: () {
                          playwrong();
                        },
                      ),


                    ),
                    Positioned(
                      top: 25,
                      right:173,
                      child:FlatButton(
                        child: Container(

                          child: Image.asset('assets/br.png',width: 90,
                            height: 190,),
                        ),
                        onPressed: () {
                          playwrong();
                        },
                      ),


                    ),
                    Positioned(
                      top: 85,
                      right:220,
                      child:FlatButton(
                        child: Container(

                          child: Image.asset('assets/bbn.png',width: 75,
                            height: 170,),
                        ),
                        onPressed: () {
                          playwrong();
                        },
                      ),


                    ),
                    Positioned(
                      top:5,
                      right:260,
                      child:FlatButton(
                        child: Container(

                          child: Image.asset('assets/bg.png',width: 100,
                            height: 210,),
                        ),
                        onPressed: () {
                          playwrong();
                        },
                      ),


                    ),
                    Positioned(
                      top:130,
                      right:295,
                      child:FlatButton(
                        child: Container(

                          child: Image.asset('assets/bo.png',width: 30,
                            height: 80,),
                        ),
                        onPressed: () {
                          playwrong();
                        },
                      ),


                    ),
                  ],
                ),
              ),
            ),
            Row(children: <Widget>[Container(
              decoration: new BoxDecoration(
                  color:Colors.transparent),
              child: Row(children: <Widget>[
                new Container(
                  margin: EdgeInsets.fromLTRB(20.0, 25.0, 120.0, 0.0),
                  child: FlatButton(
                    child:new Container(
                      child: Image.asset('assets/leftt.png',width: 38,height: 38,),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Select()));
                    },
                  ),),
                new Container(
                  margin: EdgeInsets.fromLTRB(20.0, 25.0, 10.0, 0.0),
                  child: FlatButton(
                    child:new Container(
                      child: Image.asset('assets/rightt.png',width: 38,height: 38,),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Painting()));
                    },
                  ),
                ),
              ],),

            )],),

          ]),);


  }




}
