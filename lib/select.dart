
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kurdi_poli_yak/Chalaki4.dart';
import 'package:kurdi_poli_yak/baloon.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';



class Select extends StatelessWidget {
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
  player.play('buzzer.mp3');
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
  int  _currentIndex3 = 0;
  _onChanged3() {
    //update with a new color when the user taps button
    playSoundd();

    setState(() {
      _currentIndex3 = 1;
    });
  }
  int  _currentIndex4 = 0;
  _onChanged4() {
    //update with a new color when the user taps button
    playSoundd();

    setState(() {
      _currentIndex4 = 1;
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
              margin:EdgeInsets.fromLTRB(25, 1,0, 0) ,
              child: Text('چالاکی (٣)',style:TextStyle(fontWeight: FontWeight.bold ,fontSize: 22,color: Color(0xff0A7478 ),),),),
            Container(
                width: 400,
                height: 35,
                margin:EdgeInsets.fromLTRB(140, 20, 10, 0) ,
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



                  Text('بدۆزەرەوە، نیشانەی بکە ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),
                  Text('(',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),

                  Text('د',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18,color: Colors.red),),


                  Text(')',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),

                ],)
            ),
            SafeArea(child: Row(

                children: <Widget>[


                  Container( margin: EdgeInsets.fromLTRB(0,0, 0, 5),
                    constraints: BoxConstraints(

                        maxHeight: 280.0,
                        maxWidth:360.0,
                        minWidth: 300.0,
                        minHeight: 150.0
                    ),
                    decoration: BoxDecoration(

                      image: DecorationImage(
                        image: AssetImage("assets/w4ch3.png"),fit: BoxFit.fill
                      ),
                    ),
                    child:
                    Stack(
                        children: [

                          Positioned(
                            bottom: 80,
                            left: 20,
                            child:FlatButton(
                              child: Text('غ',style: TextStyle( fontSize: 20)),
                              shape:CircleBorder(),
                              onPressed: () {
                                playwrong();},
                              //specify background color  of button from our list of colors
                            ),

                          ),
                          Positioned(
                            top: 115,
                            right: 50,
                            child:FlatButton(
                              child: Text('ح',style: TextStyle( fontSize: 20)),
                              shape:CircleBorder(),
                              onPressed: () {
                                playwrong();},
                              //specify background color  of button from our list of colors
                            ),
                          ),
                          Positioned(
                            top: 85,
                            right: 100,
                            child:FlatButton(
                              child: Text('پ',style: TextStyle( fontSize: 20)),
                              shape:CircleBorder(),
                              onPressed: () {
                                playwrong();},
                              //specify background color  of button from our list of colors
                            ),

                          ),
                          Positioned(
                            top: 80,
                            left: 90,
                            child: FlatButton(

                                child: Text('د',style: TextStyle( fontSize: 24)),
                                onPressed: _onChanged1,
                                color: _colors1[_currentIndex1],
                                //specify background color  of button from our list of colors
                                shape:CircleBorder()),

                          ),
                          Positioned(
                            top: 190,
                            right: 110,
                            child:  FlatButton(

                                child: Text('د',style: TextStyle( fontSize: 22)),

                                onPressed: _onChanged2,

                                color: _colors2[_currentIndex2],
                                //specify background color  of button from our list of colors
                                shape:CircleBorder()),

                          ),
                          Positioned(
                            top: 140,
                            right: 140,
                            child:   FlatButton(

                                child: Text('چ',style: TextStyle( fontSize: 22)),

                                onPressed: () {
                                  playwrong();},
                                //specify background color  of button from our list of colors
                                shape:CircleBorder()),

                          ),
                          Positioned(
                            top: 170,
                            right: 60,
                            child:  FlatButton(

                                child: Text('ک',style: TextStyle( fontSize: 22)),

                                onPressed: () {
                                  playwrong();},
                                //specify background color  of button from our list of colors
                                shape:CircleBorder()),

                          ),

                          Positioned(
                            top: 120,
                            right: 210,
                            child: FlatButton(

                                child: Text('پ',style: TextStyle( fontSize: 22)),

                                onPressed: () {
                                  playwrong();},
                                //specify background color  of button from our list of colors
                                shape:CircleBorder()),

                          ),
                          Positioned(
                            top: 180,
                            right: 190,
                            child:FlatButton(

                                child: Text('ن',style: TextStyle( fontSize: 22)),

                                onPressed: () {
                                  playwrong();},
                                //specify background color  of button from our list of colors
                                shape:CircleBorder()),

                          ),
                          Positioned(
                            top: 30,
                            right: 110,
                            child:  FlatButton(

                                child: Text('د',style: TextStyle( fontSize: 22)),

                                onPressed: _onChanged3,

                                color: _colors2[_currentIndex3],
                                //specify background color  of button from our list of colors
                                shape:CircleBorder()),

                          ),
                          Positioned(
                            top: 80,
                            right: 250,
                            child:FlatButton(

                                child: Text('م',style: TextStyle( fontSize: 22)),

                                onPressed: () {
                                  playwrong();},
                                //specify background color  of button from our list of colors
                                shape:CircleBorder()),

                          ),
                          Positioned(
                            top: 40,
                            right: 210,
                            child:FlatButton(

                                child: Text('گ',style: TextStyle( fontSize: 22)),

                                onPressed: () {
                                  playwrong();},
                                //specify background color  of button from our list of colors
                                shape:CircleBorder()),

                          ),
                          Positioned(
                            top: 105,
                            right:4,
                            child: FlatButton(

                                child: Text('د',style: TextStyle( fontSize: 22)),

                                onPressed: _onChanged4,

                                color: _colors2[_currentIndex4],
                                //specify background color  of button from our list of colors
                                shape:CircleBorder()),

                          ),
                          Positioned(
                            top: 43,
                            right: 33,
                            child:FlatButton(

                                child: Text('ت',style: TextStyle( fontSize: 22)),

                                onPressed: () {
                                  playwrong();},
                                //specify background color  of button from our list of colors
                                shape:CircleBorder()),

                          ),
                        ]
                    )


                  ),]),),


            Row(children: <Widget>[Container(
              decoration: new BoxDecoration(
                  color:Colors.transparent),
              child: Row(children: <Widget>[
                new Container(
                  margin: EdgeInsets.fromLTRB(20.0,3.0, 120.0, 0.0),
                  child: FlatButton(
                    child:new Container(
                      child: Image.asset('assets/leftt.png',width: 35,height: 35,),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SixPage()));
                    },
                  ),),
                new Container(
                  margin: EdgeInsets.fromLTRB(20.0, 3.0, 10.0, 0.0),
                  child: FlatButton(
                    child:new Container(
                      child: Image.asset('assets/rightt.png',width: 35,height: 35,),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Baloon()));
                    },
                  ),
                ),
              ],),

            )],),




          ]),);


  }




}
