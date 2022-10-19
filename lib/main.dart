
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
  int value = 0;
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('Assets/clock.png',height: 150,width: 150,),
              SizedBox(height: 30.0,),
              Text("COUNT",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,color: Colors.white),),
              Text("$value",style: TextStyle(fontSize: 80.0,fontWeight: FontWeight.bold),),
              SizedBox(height: 60.0,),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        color: Colors.white ,
                        padding: EdgeInsets.fromLTRB(25.0, 10.0, 30.0, 10.0),
                        child: IconButton(
                            onPressed: ()
                            {
                              setState(() {
                                value += 1;
                              });
                            },
                            icon: Icon(Icons.add,color: Colors.grey[900],size: 40.0,)),
                      ),
                      Spacer(),
                      Container(
                        color: Colors.grey[900] ,
                        padding: EdgeInsets.fromLTRB(25.0, 10.0, 30.0, 10.0),
                        child: IconButton(
                            onPressed: (){
                              setState(() {
                                value -= 1;
                              });
                            },
                            icon: Icon(Icons.minimize,color: Colors.white,size: 40.0,)),
                      )
                    ],
                  ),
                  SizedBox(height: 30.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed:()
                        {
                          setState(() {
                            value = 0;
                          });;
                        },
                          child: Text('Reset'),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),)
                    ],
                  )

                ],
              )


            ],
        ),
      ),

    );
  }
}


