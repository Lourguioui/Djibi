import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.only(top: 0.0, right: 45.0, left: 45.0, bottom: 20.0),
        child: ListView(
          children: <Widget>[
             Image(image: AssetImage('assets/images/Logo.png')),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Adresse email',
                    ),
                    validator: (input) => !input.contains('@')
                        ? 'not a valide email adresse'
                        : null,
                    onSaved: (input) => _email = input,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Mot de passe',
                      labelStyle: TextStyle(
                        
                      ),
                    ),
                    obscureText: true,
                    validator: (input) => input.length < 8
                        ? 'You should enter 8 caracters at least'
                        : null,
                    onSaved: (input) => _password = input,
                  ),
                  GestureDetector(
                    
                    child: Container(
                      margin:EdgeInsets.only(top: 40.0) ,
                     height: 40.0,
                     width: MediaQuery.of(context).size.width,
                     decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(23.0),
                     gradient: LinearGradient(
                        colors: [
                          Color(0xFFA72BFA),
                          Color(0xFF3827B4)
                        ], 
                     ),
                      ),
                      child: Center(
                          child: Text('Inscription',
                          style: TextStyle(
                              color: Colors.white,
                          ),
                          ),
                      ),
                    ),
                  ),
                   GestureDetector(
                    
                    child: Container(
                      margin:EdgeInsets.only(top: 10.0) ,
                     height: 40.0,
                     width: MediaQuery.of(context).size.width,
                     decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(23.0),
                     border: Border.all(
                        color: Color(0xFFB6BBCC),
                     ) ,
                      ),
                      child: Center(
                          child: Text('Connexion avec avec Google',
                          style: TextStyle(
                              color: Color(0xFF4C5162),
                          ),
                          ),
                      ),
                    ),
                  ),
                  ],
              ),
            )
          ],
        ),
      ),
    );
  }}