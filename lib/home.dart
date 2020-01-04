import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    /*void redirect(){
      Navigator.pushNamed(context, '/register');
    }*/
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            
            //padding:EdgeInsets.only(bottom : .0) ,
            decoration: BoxDecoration(
                image: DecorationImage(
              alignment: Alignment.bottomCenter,
              fit: BoxFit.fitWidth,
              image: AssetImage("assets/images/Background1.png"),
            )),
          ),
          Container(
            padding: EdgeInsets.only(right: 95.0, left: 95.0),
            alignment: Alignment.bottomCenter,
              child:GestureDetector(
                  onTap:(){
                     Navigator.pushNamed(context, '/register');
                  },
                  child: Container(
                    margin:EdgeInsets.only(bottom: 55.0) ,
                    height: 40.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        color: Colors.white,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Commencer',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                ),
        ],
      ),
     /* body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            // padding:EdgeInsets.only(top: 200.0) ,
            decoration: BoxDecoration(
                image: DecorationImage(
              alignment: Alignment.bottomCenter,
              fit: BoxFit.fitWidth,
              image: AssetImage("assets/images/Background1.png"),
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    //margin:EdgeInsets.only(top: 1000.0) ,
                    height: 40.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        color: Colors.white,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Commencer',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            /*child: ListView(
          children: <Widget>[
            //Image(image: AssetImage('assets/images/Background.png')),
            Image(image: AssetImage('assets/images/Logo1.png'),),
            
          ],
        // ),*/
          ),
        ],
       ),*/
    );
  }
}
