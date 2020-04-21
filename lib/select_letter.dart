import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kurdi_poli_yak/FourthPage.dart';
import 'package:kurdi_poli_yak/ThreePage.dart';
import 'package:kurdi_poli_yak/baloon.dart';
void main() => runApp(Select_letter());
class Select_letter extends StatelessWidget {
  // This widget is the root of your application.



  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('right.m4a');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  static TapGestureRecognizer _recognizer;
  static Color color = Colors.black;
  static Color color1 = Colors.black;
  static Color color2 = Colors.black;
  static Color color3 = Colors.black;
  static Color color4 = Colors.black;
  String word = "";
  String letter = "";
  String firstPart = "";
  String remainPart = "";
  int ff = 0;
  int rf = 0;
  double textSize = 30;
  RichText richText;
  void changeColor(int numOfWord) {
    switch (numOfWord) {
      case 1:
        setState(() {
          color1 = Colors.red;
          color = color1;
        });
        break;
      case 2:
        setState(() {
          color2 = Colors.red;
          color = color2;
        });
        break;
      case 3:
        setState(() {
          color3 = Colors.red;
          color = color3;
        });
        break;
      case 4:
        setState(() {
          color4 = Colors.red;
          color = color4;
        });
        break;
    }
  }
  Widget rich(String cWord, String cLetter, int numOfWord) {
    switch (numOfWord) {
      case 1:
        color = color1;
        break;
      case 2:
        color = color2;
        break;
      case 3:
        color = color3;
        break;
      case 4:
        color = color4;
        break;
    }
    word = cWord;
    letter = cLetter;
    if (word.startsWith(letter)) {
      richText = RichText(
          text: TextSpan(
            children: <TextSpan>[
              new TextSpan(
                  text: letter,
                  style: (TextStyle(color: color, fontSize: textSize)),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      changeColor(numOfWord);
                      playSound();
                    }),
              new TextSpan(
                text: word.substring(1, word.length),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: textSize,
                ),
              ),
            ],
          ));
    } else if (word.endsWith(letter)) {
      richText = RichText(
        text: TextSpan(
          children: <TextSpan>[
            new TextSpan(
                text: word.substring(0, word.length - 1),
                style: TextStyle(color: Colors.black, fontSize: textSize)),
            new TextSpan(
                text: letter,
                style: (TextStyle(color: color, fontSize: textSize)),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    changeColor(numOfWord);
                    playSound();
                  }),
          ],
        ),
      );
    } else if (!word.startsWith(letter) &&
        !word.endsWith(letter) &&
        word.contains(letter)) {
      for (int i = 0; i < word.length; i++) {
        if (i < word.indexOf(letter) && ff == 0) {
          firstPart = firstPart + word[i];
          if (i == word.indexOf(letter) - 1) ff = 1;
        } else if (i > word.indexOf(letter) && rf == 0) {
          remainPart = remainPart + word[i];
          if (i == word.length - 1) rf = 1;
        }
      }
      richText = RichText(
        text: TextSpan(
          children: <TextSpan>[
            new TextSpan(
                text: firstPart,
                style: TextStyle(color: Colors.black, fontSize: textSize)),
            new TextSpan(
                text: letter,
                style: (TextStyle(color: color, fontSize: textSize)),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    changeColor(numOfWord);
                    playSound();
                  }),
            new TextSpan(
              text: remainPart,
              style: (TextStyle(color: Colors.black, fontSize: textSize)),
            ),
          ],
        ),
      );
    } else {
      richText = RichText(
        text: TextSpan(
          text: word,
          style: (TextStyle(color: Colors.black, fontSize: textSize)),
        ),
      );
    }
    return richText;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
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



              Text(' بخەرە ناو چەماوەیەک',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),
              Text('(',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),

              Text('د',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18,color: Colors.red),),


              Text(')',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),

            ],)
          ),

          Column(
            children: <Widget>[
              Container(


                margin: EdgeInsets.fromLTRB(0, 40, 0, 0),child: Column(children: <Widget>[
                rich('دەرگا', 'د', 1),
                SizedBox(

                  width: 10,
                  height: 13,
                ),
                rich('پەنجەرە', 'د', 2),
                SizedBox(

                  width: 10,
                  height: 13,
                ),
                rich('دیوار', 'د', 3),
                SizedBox(

                  width: 10,
                  height: 13,
                ),
                rich('پەردە', 'د', 4),

              ],),)
            ],
          ),
            Row(children: <Widget>[Container(
              decoration: new BoxDecoration(
                  color:Colors.transparent),
              child: Row(children: <Widget>[
                new Container(
                  margin: EdgeInsets.fromLTRB(20.0, 17.0, 120.0, 0.0),
                  child: FlatButton(
                    child:new Container(
                      child: Image.asset('assets/leftt.png',width: 37,height: 37,),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ThreePage()));
                    },
                  ),),
                new Container(
                  margin: EdgeInsets.fromLTRB(20.0, 17.0, 10.0, 0.0),
                  child: FlatButton(
                    child:new Container(
                      child: Image.asset('assets/rightt.png',width: 37,height: 37,),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FourthPage()));
                    },
                  ),
                ),
              ],),

            )],),
          ],
        ),
      ),
    );
  }
}