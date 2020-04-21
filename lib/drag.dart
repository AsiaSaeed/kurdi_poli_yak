import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kurdi_poli_yak/FourthPage.dart';
import 'package:kurdi_poli_yak/SecondPage.dart';


class Drag extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'PressStart',
      ),
      home: DragDrop(),
    );
  }
}

class DragDrop extends StatefulWidget {
  DragDrop({Key key}) : super(key: key);

  createState() => DragDropState();
}

class DragDropState extends State<DragDrop> {
  /// Map to keep track of score
  final Map<String, bool> score = {};

  /// Choices for game
  final Map choices = {
    'د': BoxShape.circle,
    'ئامە': BoxShape.rectangle,
  };

  // Random seed to shuffle order of items.
  int seed = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(/*
      appBar: AppBar(
          title: Text('Score ${score.length} / 2'),
          backgroundColor: Colors.blue),
   floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            score.clear();
            seed++;
          });
        },
      ),*/




      body:
      Column(children: <Widget>[
        Row(children: <Widget>[Container(

          decoration: new BoxDecoration(


              color: new Color(0xFF43B5F5) ),

          child: Row(children: <Widget>[

            new Container(
              margin: EdgeInsets.fromLTRB(10, 14, 0, 8),
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
              margin: EdgeInsets.fromLTRB(168.0, 14, 5, 8),
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
          initialRating: 4,
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
            height: 35,
            margin:EdgeInsets.fromLTRB(160, 30, 10, 0) ,
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

              Text('( ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),

              Text('ڕوتەڵکردن',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),
              Text(' )',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),

              Text('جیاکردنەوە ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18,),),




            ],)
        ),
        Column(
            children: <Widget>[


              Row(  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 360,


                    margin: EdgeInsets.fromLTRB(0,50, 0, 0),
                    padding: EdgeInsets.all(20.0),
                    decoration: new BoxDecoration(

                        color: new Color(0xFFFFE5D0) ),

                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                          choices.keys.map((emoji) => _buildDragTarget(emoji)).toList()
                            ..shuffle(Random(seed)),
                        ),

                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: choices.keys.map((emoji) {
                              return Draggable<String>(
                                data: emoji,
                                child: Emoji(emoji: score[emoji] == true ? '✅' : emoji),
                                feedback: Emoji(emoji: emoji),

                              );
                            }).toList()),

                      ],
                    ),
                  ),],),
              Row(
                children: <Widget>[
                  Container(
                      height: 150,
                      width: 200,
                      margin: EdgeInsets.fromLTRB(70,0, 0, 0),
                      child:  Image.asset('assets/rr.png')
                  )
                ],
              )
            ]),

        Row(children: <Widget>[Container(
          decoration: new BoxDecoration(
              color:Colors.transparent),
          child: Row(children: <Widget>[
            new Container(
              margin: EdgeInsets.fromLTRB(20.0, 5, 144, 0),
              child: FlatButton(
                child:new Container(
                  child: Image.asset('assets/leftt.png',width: 35,height: 35,),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FourthPage()));
                },
              ),),
            new Container(
              margin: EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: FlatButton(
                child:new Container(
                  child: Image.asset('assets/rightt.png',width: 35,height: 35,),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                },
              ),
            ),
          ],),

        )],),
      ]) ,
    );
  }
  void playSoundd() {
    final player = AudioCache();
    player.play('wrong.mp3');
  }
  Widget _buildDragTarget(emoji) {
    return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming, List rejected) {
        if (score[emoji] == true) {

          return Container(
            color: Colors.transparent,
            child: Text('ڕاستە'),
            alignment: Alignment.center,
            height: 80,
            width: 80,
          );
        } else {
          if (choices[emoji] == BoxShape.circle) {
            return Container(  height: 50, width: 40,child:Text('د',style: TextStyle( fontSize: 30,color: Color(0xFF000000).withOpacity(0.2))),  decoration: new BoxDecoration( color:Colors.transparent,

              shape:choices[emoji] ,
            ),);}
          else{
            return Container( height: 50, width:80,child:Text('ئامە',style: TextStyle( fontSize: 30,color: Color(0xFF000000).withOpacity(0.2))), decoration: new BoxDecoration(color:Colors.transparent,

                shape:choices[emoji] ),);
          }
        }
      },
      onWillAccept: (data) => data == emoji,
      onAccept: (data) {
        setState(() {
          score[emoji] = true;
          plyr.play('right.mp3');
        });
      },
      onLeave: (data) {},
    );
  }
}

class Emoji extends StatelessWidget {
  Emoji({Key key, this.emoji}) : super(key: key);

  final String emoji;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 70,
        padding: EdgeInsets.all(5),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
    );
  }
}

AudioCache plyr = AudioCache();