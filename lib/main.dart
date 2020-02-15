import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'کوردی پۆلی یەک',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget{

  List<Widget>makeListWidget(AsyncSnapshot snapshot){
    return snapshot.data.documents.map<Widget>((document){
      return ListTile(
        title: Center (
          child:Text(
            document["name"],style:TextStyle(color: Colors.black,fontSize: 25.0),
          ),
        ),
        subtitle:Center(
          child: Image.network(document["imgurl"].toString())
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("کوردی پۆلی یەک",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: StreamBuilder(
          stream: Firestore.instance.collection('lesson').snapshots(),
          builder: (context,snapshot){
            switch(snapshot.connectionState){
              case ConnectionState.waiting:
                return CircularProgressIndicator();
              default:
                return ListView(
                  children:makeListWidget(snapshot),
                );
            }
          },
        ),
      ),
    );
  }
}