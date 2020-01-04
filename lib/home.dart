import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            //Image(image: AssetImage('assets/images/Background.png')),
            Image(image: AssetImage('assets/images/Logo.png'),),
            Center(
              child: Text('Une gestion parfaite du budget'),
            ),
          ],
        ),
      ),
    );
  }
}