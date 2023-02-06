import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Happy Birthday",style: TextStyle(color: Colors.blueGrey.shade900,fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
      fontSize: 30.0,


        fontFamily:'RobotoMono',
      ),
      ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        alignment: Alignment.center,
        child:Stack(
          alignment: Alignment.topCenter,
          children: [

            getCard(),
            getImage(),
          ],

        ),
      ),
    );
  }

 Container getCard() {
    return Container(

      width: 350.0,
      height: 200.0,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(

        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(4.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Enjoy your day"),
          Text("play more an more games"),
          Text("ab ho gaya ab"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.cake_sharp),
              Text("@aishwaryasarathe"),

            ],
          )
        ],


      ),
    );
 }

  Container getImage() {
    return Container(
      width: 100.0,
      height: 100.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.brown,width: 1.9),
        color: Colors.white,
        image:DecorationImage(image:NetworkImage("https://picsum.photos/seed/picsum/300/300"
        ),fit: BoxFit.cover ),
      ),
    );
  }
}
