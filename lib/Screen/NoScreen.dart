import 'package:flutter/material.dart';
import 'package:val_app/Screen/home.dart';

class NoScreen extends StatelessWidget {
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
                        image: AssetImage('assets/images/walkcycle.gif'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(75.0),
                      ),
                    ),
                  ),
      Container(alignment: Alignment.center,
        margin: EdgeInsets.all(30),
        child: Text('Nice Try Ruth, You"re not Mad',textAlign: TextAlign.left, 
        style: TextStyle(
          fontSize: 30.0,
        ),
        ),
      ),
      
      
      SizedBox(height: 50.0,),
      
      Container(
        child: FlatButton(
          child: Container(
            height: 50,
            child: Text('Now Go back and hit YES',
            style: TextStyle(
              fontSize: 15
            ),),
          ),
          onPressed: (){
 Navigator.pushReplacement(
      context,
     MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
          },
        ),
      ),
    ],
  )
],
      ),
    );
  }
}