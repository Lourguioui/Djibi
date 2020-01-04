import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final _formKey1 = GlobalKey<FormState>();
  String _email1, _password1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/Logo.png'),
              height: 200.0,
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 0.0, right: 45.0, left: 45.0, bottom: 20.0),
              

                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Adresse email',
                      ),
                      validator: (input) => !input.contains('@')
                          ? 'not a valide email adresse'
                          : null,
                      
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Mot de passe',
                        labelStyle: TextStyle(),
                      ),
                      obscureText: true,
                      validator: (input) => input.length < 8
                          ? 'You should enter 8 caracters at least'
                          : null,
                      
                    ),
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(top: 40.0),
                        height: 40.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23.0),
                          gradient: LinearGradient(
                            colors: [Color(0xFFA72BFA), Color(0xFF3827B4)],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Connexion',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(top: 10.0),
                        height: 40.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23.0),
                          border: Border.all(
                            color: Color(0xFFB6BBCC),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Connexion avec Google',
                            style: TextStyle(
                              color: Color(0xFF4C5162),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top : 30.0),
                      child: Column(
                        children: <Widget>[
                          Text('Vous avez un compte?'),
                          FlatButton(
                            child: Text(
                              'Inscriez vous!',
                              style: TextStyle(
                                color: Color(0xFFA72BFA)
                              ),
                            ),
                            onPressed: (){
                              Navigator.pushNamed(context,'/login');
                            },
                          ),
                        ],
                      ),
                    )
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
}
