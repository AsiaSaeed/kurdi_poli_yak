import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kurdi_poli_yak/SecondPage.dart';
import 'package:kurdi_poli_yak/drag.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter_animator/flutter_animator.dart';


class LetterList extends StatefulWidget {
  @override
  _LetterListState createState() => _LetterListState();
}


final RoundedLoadingButtonController _btnController = new RoundedLoadingButtonController();

void _doSomething() async {
  Timer(Duration(seconds: 3), () {

  });
}
void playd() {
  final player = AudioCache();
  player.play('d.m4a');
}
class _LetterListState extends State<LetterList> {
  @override
  final GlobalKey<AnimatorWidgetState> basicAnimation1 =
  GlobalKey<AnimatorWidgetState>();

  final GlobalKey<AnimatorWidgetState> basicAnimation3 =
  GlobalKey<AnimatorWidgetState>();
  final GlobalKey<AnimatorWidgetState> basicAnimation2 =
  GlobalKey<AnimatorWidgetState>();
  final GlobalKey<AnimatorWidgetState> basicAnimation4 =
  GlobalKey<AnimatorWidgetState>();
  final GlobalKey<AnimatorWidgetState> basicAnimation5 =
  GlobalKey<AnimatorWidgetState>();

  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        child:

            CustomScrollView(
              slivers: <Widget>[

                SliverList(

                  delegate: SliverChildListDelegate(
                    [

                      Row(children: <Widget>[Container(

                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.only(

                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            color: new Color(0xFF43B5F5) ),
                        child: Row(children: <Widget>[
                          new Container(
                            margin: EdgeInsets.fromLTRB(20.0, 14, 144, 13),
                            child: FlatButton(
                              child:new Container(
                                child: Image.asset('assets/homepage.png',width: 50,height: 50,),
                              ),
                              onPressed: () {
                                //  playSound();
                              },
                            ),),
                          new Container(
                            margin: EdgeInsets.fromLTRB(20, 14, 0, 13),
                            child: FlatButton(
                              child:new Container(
                                child: Image.asset('assets/book.png',width: 45,height: 45,),
                              ),
                              onPressed: () {
                                //  playSound();
                              },
                            ),
                          ),
                        ],),

                      )],),
                      Container(    width: 900,

                        //color: Color(0xffffffff),



                        child:
                      Column(   children: <Widget>[
                        FadeInLeftBig(
                          key: basicAnimation1,
                         child: Container(
                              width: 320,
                              height: 120,

                              color: Colors.transparent,
                              margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                              child: RoundedLoadingButton(
                                height: 300,
                                child:  Row(children: <Widget>[
                                  Container(
                                    margin:EdgeInsets.fromLTRB(2, 0, 0, 0),
                                    child:Hero(
                                        tag: 'flutterLogo',
                                        child: GestureDetector(
                                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage())),
                                            child: Image.asset('assets/am.png',width: 180,height: 80,),
                                            )),
                                  ),
                                  Container(
                                    width: 90,
                                    height: 90,
                                    child: FlatButton(
                                      child:new Container(
                                        margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                        child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                      ),
                                      onPressed: () {
                                        playd();
                                      },
                                    ),
                                  ),
                                ],),
                                color: Color(0xffFFF05A),

                                controller: _btnController,
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Drag()));
                                },
                              ),
                            ),
                       ),

                        FadeInRightBig(
                          key: basicAnimation2,
                          child: Container(
                              width: 320,
                              height: 120,
                              margin:EdgeInsets.fromLTRB(0, 0, 0, 15),
                              color: Color(0xffffffff),
                              child: RoundedLoadingButton(
                                height: 300,
                                child:  Row(children: <Widget>[

                                  Container(
                                    margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Image.asset('assets/dar.png',width: 180,height: 80,),
                                  ),
                                  Container(
                                    width: 90,
                                    height: 90,
                                    child: FlatButton(
                                      child:new Container(
                                        margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                        child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                      ),
                                      onPressed: () {
                                        //  playSound();
                                      },
                                    ),
                                  ),
                                ],),
                                controller: _btnController,
                                onPressed: _doSomething,
                                color: Color(0xffffffff),
                               // Color(0xff78D4FF),
                              ),
                            ),
                        ),

                        FadeInLeftBig(
                          key: basicAnimation3,
                           child: Container(
                              width: 320,
                              height: 120,
                              margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                              color: Color(0xffffffff),
                              child: RoundedLoadingButton(
                                child:  Row(children: <Widget>[
                                  Container(
                                    margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Image.asset('assets/moz.png',width: 180,height: 80,),
                                  ),
                                  Container(
                                    width: 90,
                                    height: 90,
                                    child: FlatButton(
                                      child:new Container(
                                        margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                        child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                      ),
                                      onPressed: () {
                                        //  playSound();
                                      },
                                    ),
                                  ),
                                ],),
                                height: 300,
                                color: Color(0xffcfcfcf),
                                controller: _btnController,
                                onPressed: _doSomething,
                              ),
                            ),
                         ),

                        FadeInRightBig(
                          key: basicAnimation4,
                         child: Container(
                              width: 320,
                              height: 120,
                              margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                              color: Color(0xffffffff),
                              child: RoundedLoadingButton(
                                child:  Row(children: <Widget>[
                                  Container(
                                    margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Image.asset('assets/chaw.png',width: 180,height: 80,),
                                  ),
                                  Container(
                                    width: 90,
                                    height: 90,
                                    child: FlatButton(
                                      child:new Container(
                                        margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                        child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                      ),
                                      onPressed: () {
                                        //  playSound();
                                      },
                                    ),
                                  ),
                                ],),
                                height: 300,
                                color: Color(0xffEB5836),
                                controller: _btnController,
                                onPressed: _doSomething,
                              ),
                            ),
                       ),

                        FadeInLeftBig(
                          key: basicAnimation5,
                          child: Container(
                              width: 320,
                              height: 120,
                              margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                              color: Color(0xffffffff),
                              //Color(0xffB3E9F9)
                              child: RoundedLoadingButton(
                                child:  Row(children: <Widget>[
                                  Container(
                                    margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Image.asset('assets/marr.png',width: 180,height: 80,),
                                  ),
                                  Container(
                                    width: 90,
                                    height: 90,
                                    child: FlatButton(
                                      child:new Container(
                                        margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                        child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                      ),
                                      onPressed: () {
                                        //  playSound();
                                      },
                                    ),
                                  ),
                                ],),
                                height: 300,
                                color: Color(0xffFAFF8A),
                                controller: _btnController,
                                onPressed: _doSomething,
                              ),
                            ),
                        ),
                        Container(
                            width: 320,
                            height: 120,
                            color: Color(0xffffffff),
                            margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: RoundedLoadingButton(
                              child:  Row(children: <Widget>[
                                Container(
                                  margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Image.asset('assets/do.png',width: 180,height: 80,),
                                ),
                                Container(
                                  width: 90,
                                  height: 90,
                                  child: FlatButton(
                                    child:new Container(
                                      margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                      child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                    ),
                                    onPressed: () {
                                      //  playSound();
                                    },
                                  ),
                                ),
                              ],),
                              color: Color(0xff9297C4),
                              height: 300,
                              controller: _btnController,
                              onPressed: _doSomething,
                            ),
                          ),

                       Container(
                            width: 320,
                            height: 120,
                            color: Color(0xffffffff),
                            margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: RoundedLoadingButton(
                              child:  Row(children: <Widget>[
                                Container(
                                  margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Image.asset('assets/nay.png',width: 180,height: 80,),
                                ),
                                Container(
                                  width: 90,
                                  height: 90,
                                  child: FlatButton(
                                    child:new Container(
                                      margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                      child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                    ),
                                    onPressed: () {
                                      //  playSound();
                                    },
                                  ),
                                ),
                              ],),
                              height: 300,
                              color:    Color(0xff78D4FF),
                              controller: _btnController,
                              onPressed: _doSomething,
                            ),
                          ),

                        Container(
                            width: 320,
                            height: 120,
                            margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                            color: Color(0xffffffff),
                            child: RoundedLoadingButton(
                              child:  Row(children: <Widget>[
                                Container(
                                  margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Image.asset('assets/aw.png',width: 180,height: 80,),
                                ),
                                Container(
                                  width: 90,
                                  height: 90,
                                  child: FlatButton(
                                    child:new Container(
                                      margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                      child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                    ),
                                    onPressed: () {
                                      //  playSound();
                                    },
                                  ),
                                ),
                              ],),
                              height: 300,
                              color: Color(0xffFEA4BB),
                              controller: _btnController,
                              onPressed: _doSomething,
                            ),
                          ),

                         Container(
                            width: 320,
                            height: 120,
                            color: Color(0xffffffff),
                            margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: RoundedLoadingButton(
                              child:  Row(children: <Widget>[
                                Container(
                                  margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Image.asset('assets/nan.png',width: 180,height: 80,),
                                ),
                                Container(
                                  width: 90,
                                  height: 90,
                                  child: FlatButton(
                                    child:new Container(
                                      margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                      child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                    ),
                                    onPressed: () {
                                      //  playSound();
                                    },
                                  ),
                                ),
                              ],),
                              height: 300,
                              color: Color(0xff61C2A2),
                              controller: _btnController,
                              onPressed: _doSomething,
                            ),
                          ),




                        Container(
                          width: 320,
                          height: 120,
                          color: Color(0xffffffff),
                          margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: RoundedLoadingButton(
                            child:  Row(children: <Widget>[
                              Container(
                                margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Image.asset('assets/rozh.png',width: 180,height: 80,),
                              ),
                              Container(
                                width: 90,
                                height: 90,
                                child: FlatButton(
                                  child:new Container(
                                    margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                  ),
                                  onPressed: () {
                                    //  playSound();
                                  },
                                ),
                              ),
                            ],),
                            color: Color(0xff9297C4),
                            height: 300,
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),

                        Container(
                          width: 320,
                          height: 120,
                          color: Color(0xffffffff),
                          margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: RoundedLoadingButton(
                            child:  Row(children: <Widget>[
                              Container(
                                margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Image.asset('assets/lade.png',width: 180,height: 80,),
                              ),
                              Container(
                                width: 90,
                                height: 90,
                                child: FlatButton(
                                  child:new Container(
                                    margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                  ),
                                  onPressed: () {
                                    //  playSound();
                                  },
                                ),
                              ),
                            ],),
                            height: 300,
                            color:    Color(0xff78D4FF),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),

                        Container(
                          width: 320,
                          height: 120,
                          margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                          color: Color(0xffffffff),
                          child: RoundedLoadingButton(
                            child:  Row(children: <Widget>[
                              Container(
                                margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Image.asset('assets/kabab.png',width: 180,height: 80,),
                              ),
                              Container(
                                width: 90,
                                height: 90,
                                child: FlatButton(
                                  child:new Container(
                                    margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                  ),
                                  onPressed: () {
                                    //  playSound();
                                  },
                                ),
                              ),
                            ],),
                            height: 300,
                            color: Color(0xffFEA4BB),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),

                        Container(
                          width: 320,
                          height: 120,
                          color: Color(0xffffffff),
                          margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: RoundedLoadingButton(
                            child:  Row(children: <Widget>[
                              Container(
                                margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Image.asset('assets/rewas.png',width: 180,height: 80,),
                              ),
                              Container(
                                width: 90,
                                height: 90,
                                child: FlatButton(
                                  child:new Container(
                                    margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                  ),
                                  onPressed: () {
                                    //  playSound();
                                  },
                                ),
                              ),
                            ],),
                            height: 300,
                            color: Color(0xfffdf76a),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),
                        Container(
                          width: 320,
                          height: 120,
                          color: Color(0xffffffff),
                          margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: RoundedLoadingButton(
                            child:  Row(children: <Widget>[
                              Container(
                                margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Image.asset('assets/barww.png',width: 180,height: 80,),
                              ),
                              Container(
                                width: 90,
                                height: 90,
                                child: FlatButton(
                                  child:new Container(
                                    margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                  ),
                                  onPressed: () {
                                    //  playSound();
                                  },
                                ),
                              ),
                            ],),
                            height: 300,
                            color: Color(0xffffb5b5),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),
                        Container(
                          width: 320,
                          height: 120,
                          color: Color(0xffffffff),
                          margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: RoundedLoadingButton(
                            child:  Row(children: <Widget>[
                              Container(
                                margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Image.asset('assets/dam.png',width: 180,height: 80,),
                              ),
                              Container(
                                width: 90,
                                height: 90,
                                child: FlatButton(
                                  child:new Container(
                                    margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                  ),
                                  onPressed: () {
                                    //  playSound();
                                  },
                                ),
                              ),
                            ],),
                            height: 300,
                            color: Color(0xff92a8d1),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),
                        Container(
                          width: 320,
                          height: 120,
                          color: Color(0xffffffff),
                          margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: RoundedLoadingButton(
                            child:  Row(children: <Widget>[
                              Container(
                                margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Image.asset('assets/pat.png',width: 180,height: 80,),
                              ),
                              Container(
                                width: 90,
                                height: 90,
                                child: FlatButton(
                                  child:new Container(
                                    margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                  ),
                                  onPressed: () {
                                    //  playSound();
                                  },
                                ),
                              ),
                            ],),
                            height: 300,
                            color: Color(0xffc83349),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),
                        Container(
                          width: 320,
                          height: 120,
                          color: Color(0xffffffff),
                          margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: RoundedLoadingButton(
                            child:  Row(children: <Widget>[
                              Container(
                                margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Image.asset('assets/bwk.png',width: 180,height: 80,),
                              ),
                              Container(
                                width: 90,
                                height: 90,
                                child: FlatButton(
                                  child:new Container(
                                    margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                  ),
                                  onPressed: () {
                                    //  playSound();
                                  },
                                ),
                              ),
                            ],),
                            height: 300,
                            color: Color(0xffbdffa3),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),
                        Container(
                          width: 320,
                          height: 120,
                          color: Color(0xffffffff),
                          margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: RoundedLoadingButton(
                            child:  Row(children: <Widget>[
                              Container(
                                margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Image.asset('assets/timsah.png',width: 180,height: 80,),
                              ),
                              Container(
                                width: 90,
                                height: 90,
                                child: FlatButton(
                                  child:new Container(
                                    margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                  ),
                                  onPressed: () {
                                    //  playSound();
                                  },
                                ),
                              ),
                            ],),
                            height: 300,
                            color: Color(0xfffd588d),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),
                        Container(
                          width: 320,
                          height: 120,
                          color: Color(0xffffffff),
                          margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: RoundedLoadingButton(
                            child:  Row(children: <Widget>[
                              Container(
                                margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Image.asset('assets/ash.png',width: 180,height: 80,),
                              ),
                              Container(
                                width: 90,
                                height: 90,
                                child: FlatButton(
                                  child:new Container(
                                    margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                  ),
                                  onPressed: () {
                                    //  playSound();
                                  },
                                ),
                              ),
                            ],),
                            height: 300,
                            color: Color(0xff8fb8ff),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),
                        Container(
                          width: 320,
                          height: 120,
                          color: Color(0xffffffff),
                          margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: RoundedLoadingButton(
                            child:  Row(children: <Widget>[
                              Container(
                                margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Image.asset('assets/top.png',width: 180,height: 80,),
                              ),
                              Container(
                                width: 90,
                                height: 90,
                                child: FlatButton(
                                  child:new Container(
                                    margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Image.asset('assets/sound.png',width: 80,height: 80,),
                                  ),
                                  onPressed: () {
                                    //  playSound();
                                  },
                                ),
                              ),
                            ],),
                            height: 300,
                            color: Color(0xfffd8a5e),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),

                        ]),),
                    ],
                  ),
                ),


              ],
            ),

      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );

  }

}


class BodyWidget extends StatelessWidget {
  final Color color;

  BodyWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: color,
      alignment: Alignment.center,

    );
  }
}
class FirstPage extends StatelessWidget {
  @override
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
              width: 400,
              height: 35,
              margin:EdgeInsets.fromLTRB(250, 30, 10, 0) ,
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



                Text('ببینەو بڵێ ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),




              ],)
          ),
       Container(
         margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
         child: Center(
            child: Hero(
                tag: 'flutterLogo',
                child:Image.asset('assets/am.png',width: 360,height: 270,),
            ),
          ),
       ),


          Row(children: <Widget>[Container(
            decoration: new BoxDecoration(
                color:Colors.transparent),
            child: Row(children: <Widget>[
              new Container(
                margin: EdgeInsets.fromLTRB(20.0, 5.0, 120.0, 0.0),
                child: FlatButton(
                  child:new Container(
                    child: Image.asset('assets/leftt.png',width: 35,height: 35,),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                  },
                ),),
              new Container(
                margin: EdgeInsets.fromLTRB(20.0, 15.0, 10.0, 0.0),
                child: FlatButton(
                  child:new Container(
                    child: Image.asset('assets/rightt.png',width: 35,height: 35,),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LetterList()));
                  },
                ),
              ),
            ],),

          )],),
        ], ),
    );
  }
}