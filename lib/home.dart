import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
        ),*/
          ),
        ],
      ),
    );
  }
}
