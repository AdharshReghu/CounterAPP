
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: counter() ,
  ));
}

class counter extends StatefulWidget {
  const counter({Key? key}) : super(key: key);
  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.redAccent[200],
        title: Text("AR COUNTER",style: TextStyle( fontSize: 30.0,fontWeight: FontWeight.bold), ),
        centerTitle: true,
        leading: Icon(Icons.lock_clock,color: Colors.blueAccent[100],size: 40.0,),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('Assets/clock.png',height: 150,width: 150,)

            ],
        ),
      ),

    );
  }
}


