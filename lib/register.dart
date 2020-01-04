import 'package:flutter/material.dart';
class Register extends StatefulWidget {
  @override
  RegisterState createState() {
    return RegisterState();
  }
}

class RegisterState extends State<Register> {
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
                  /*Padding(
                    padding: const EdgeInsets.only(top: 45.0, right: 45.0, left: 45.0, bottom: 8.0),
                    child: RaisedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false
                        // otherwise.
                        if (_formKey.currentState.validate()) {
                          // If the form is valid, display a Snackbar.
                          _formKey.currentState.save();
                          print('hjkgkj');
                        }
                      },
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                                Colors.black,
                                Colors.red
                            ],
                          ),
                        ),
                        child: Text('Inscription'),
                      ),
                    ),
                  ),*/
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget buildButtonContainer(){
    return Container(
      height: 56.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.0),
        gradient: LinearGradient(
          colors: [
            Color(0xFFFB415B),
            Color(0xFFEE5623)
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft
        ),
      ),
      child: Center(
        child: Text(
          "LOGIN",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );

  }
}