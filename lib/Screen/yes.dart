import 'package:flutter/material.dart';

class YesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Theme.of(context).backgroundColor,
       appBar: AppBar(),
      body: ListView(
children: <Widget>[
  Column(
  mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
                    width: 400.0,
                    height: 400.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/explosion.gif'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(75.0),
                      ),
                    ),
                  ),
      Container(alignment: Alignment.center,
        margin: EdgeInsets.all(30),
        child: Text('My love, My baby, My wife, Woman of my dream, I can"t think of a better person to spend my life with, I love you sincerely',textAlign: TextAlign.left, 
        style: TextStyle(
          fontSize: 25.0,
        ),
        ),
      ),
      
      SizedBox(height: 50.0,),
      FlatButton(
        child: Container(
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Colors.red
          ),
          child: Text('Say Yes Again!!!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15
          ),),
        ),
        onPressed: (){

        },
      ),
    ],
  )
],
      ),
    );
  }
}