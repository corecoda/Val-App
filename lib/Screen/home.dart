import 'package:flutter/material.dart';
import 'package:val_app/Screen/NoScreen.dart';
import 'package:val_app/Screen/yes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
children: <Widget>[
  Column(
  mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
                    width: 500.0,
                    height: 500.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/myheart.gif'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(75.0),
                      ),
                    ),
                  ),
      Text('RUTH MEKULEYI ZOE', 
      style: TextStyle(
        color: Colors.black,
        fontSize: 30.0,
        fontWeight: FontWeight.bold
      ),
      ),
      SizedBox(height: 20.0,),
      Text('Will you be My Valentine?', 
     style: TextStyle(
        fontSize: 20.0,
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
          child: Text('YES!!!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15
          ),),
        ),
        onPressed: (){
 Navigator.push(
      context,
     MaterialPageRoute(builder: (BuildContext context) => YesScreen()));
        },
      ),
      SizedBox(height: 10.0,),
      FlatButton(
        child: Container(
          margin: EdgeInsets.only(right: 20.0, left: 20.0),
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Text('MAD O!!!',
          style: TextStyle(
            color: Colors.red,
            fontSize: 15
          ),),
        ),
        onPressed: (){
          Navigator.push(
      context,
     MaterialPageRoute(builder: (BuildContext context) => NoScreen()));
        },
      )
    ],
  )
],
      ),
    );
  }
}