import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kurdi_poli_yak/ThreePage.dart';
import 'package:painter2/painter2.dart';
import 'package:kurdi_poli_yak/baloon.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';



class Painting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'چالاکی',
      home: Nwsin(),
    );
  }
}

class Nwsin extends StatefulWidget {
  @override
  _NwsinState createState() => new _NwsinState();
}

class _NwsinState extends State<Nwsin> {
  bool _finished;
  PainterController _controller;

  @override
  void initState() {
    super.initState();
    _finished = false;
    _controller = newController();
  }

  PainterController newController() {
    PainterController controller = PainterController();
    controller.thickness = 5.0;

    controller.backgroundImage =   Image.asset('assets/ama.png',width: 350,height: 280,);
    return controller;
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(

        body: Column(
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
              initialRating: 9,
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
              child: Text('چالاکی (١)',style:TextStyle(fontWeight: FontWeight.bold ,fontSize: 20,color: Color(0xff0A7478 ),),),),


            Row(
              children: <Widget>[
                Container(
                  margin:EdgeInsets.fromLTRB(10, 0,75, 0) ,
                  width: 80,
                  height: 80,
                  child:  Image.asset('assets/bama.png'),
                ),
                Container(
                    width: 180,
                    height: 30,
                    margin:EdgeInsets.fromLTRB(0, 0,0, 0) ,
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



                      Text('تۆخ بکەوە،بخوێنەوە، بنووسەوە     ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 12),),


                    ],)
                ),
              ],
            ),



            Row(children: <Widget>[
              SizedBox(



              ),
              Container(
                margin:EdgeInsets.fromLTRB(0, 0, 0, 0) ,
                child: Column(children: <Widget>[
                  Row(children: <Widget>[


                    IconButton(
                      icon: Icon(Icons.undo,color: Colors.orangeAccent,size: 15,),
                      tooltip: 'Undo',
                      onPressed: () {
                        if (_controller.canUndo) _controller.undo();
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.redo,color: Colors.orangeAccent,size: 17,),
                      tooltip: 'Redo',
                      onPressed: () {
                        if (_controller.canRedo) _controller.redo();
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete,color: Colors.orangeAccent,size: 17,),
                      tooltip: 'Clear',
                      onPressed: () => _controller.clear(),
                    ),

                    Container(
                      width: 200,
                      child: PreferredSize(
                        child: DrawBar(_controller),
                        preferredSize: Size(MediaQuery.of(context).size.width, 17.0,),
                      ),),
                  ],),



                ],),
              )





            ],),



            Row(children: <Widget>[


              Container(
                width: 350,
                height:240,
                margin: EdgeInsets.fromLTRB(6, 0, 0, 0),
                child: Center(
                    child: AspectRatio(aspectRatio: 1.3,

                        child: Painter(_controller))),


              )
            ],),



            Row(children: <Widget>[Container(
              decoration: new BoxDecoration(
                  color:Colors.transparent),
              child: Row(children: <Widget>[
                new Container(
                  margin: EdgeInsets.fromLTRB(20.0, 6.0, 120.0, 0.0),
                  child: FlatButton(
                    child:new Container(
                      child: Image.asset('assets/leftt.png',width: 35,height: 35,),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Baloon()));
                    },
                  ),),
                new Container(
                  margin: EdgeInsets.fromLTRB(20.0, 6.0, 10.0, 0.0),
                  child: FlatButton(
                    child:new Container(
                      child: Image.asset('assets/rightt.png',width: 35,height: 35,),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ThreePage()));
                    },
                  ),
                ),
              ],),

            )],),
          ],



        )

    );
  }
}

class DrawBar extends StatelessWidget {
  final PainterController _controller;

  DrawBar(this._controller);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Flexible(child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Container(
                  child: Slider(
                    value: _controller.thickness,
                    onChanged: (value) => setState(() {
                      _controller.thickness = value;
                    }),
                    min: 1.0,
                    max: 10.0,
                    activeColor: Colors.orangeAccent,
                  ));
            })),

        ColorPickerButton(_controller, true),
      ],
    );
  }
}

class ColorPickerButton extends StatefulWidget {
  final PainterController _controller;
  final bool _background;

  ColorPickerButton(this._controller, this._background);

  @override
  _ColorPickerButtonState createState() => new _ColorPickerButtonState();
}

class _ColorPickerButtonState extends State<ColorPickerButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(_iconData, color: _color),

      onPressed: () => _pickColor(),
    );
  }

  void _pickColor() {

    Color pickerColor = _color;
    Navigator.of(context)
        .push(MaterialPageRoute(
        fullscreenDialog: true,
        builder: (BuildContext context) {
          return Scaffold(
              appBar: AppBar(
                title: Text('هەڵبژاردنی ڕەنگ'),
              ),
              body: Container(
                  alignment: Alignment.center,
                  child: ColorPicker(
                    pickerColor: pickerColor,
                    onColorChanged: (Color c) => pickerColor = c,
                  )));
        }))
        .then((_) {
      setState(() {
        _color = pickerColor;
      });
    });
  }

  Color get _color =>

      widget._controller.drawColor;

  IconData get _iconData =>
      Icons.edit;


  set _color(Color color) {
    if (widget._background) {

      widget._controller.drawColor = color;
    }
  }
}