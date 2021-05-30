

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Login Page",
      home: loginpage(),
    );
  }
}

// ignore: camel_case_types
class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}
// ignore: camel_case_types
class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: ListView(padding: EdgeInsets.symmetric(horizontal: 18.0),
            children: <Widget>[
              Column(
                children: [
                  SizedBox(height: 10, ),
                  Image.asset('assets/images/pis.png'),
                  SizedBox(height: 40, width: 10,)
                ],
              ),
              SizedBox(height: 10,),
              TextField(
                 decoration: InputDecoration(
                   labelText: "Entry your email",
                   prefixIcon: Icon(Icons.email),
                   labelStyle: TextStyle(fontSize: 20),
                   filled: true,
            ),
              ),
              SizedBox(height: 20,),
              TextField(
                obscureText: true,
                 decoration: InputDecoration(
                   labelText: "Password",
                   prefixIcon: Icon(Icons.security),
                   labelStyle: TextStyle(fontSize: 20),
                   filled: true,
            )
              ),
              SizedBox(height: 20,),
              Column(
                children: <Widget>[
                  ButtonTheme(
                    height: 50,
                  disabledColor:Color(0xFF03A9F4),
                  child: RaisedButton(
                    onPressed: null,
                    child: Text("Login", 
                    style:TextStyle(fontSize: 20,color: 
                    Color(0xFFFFFFFF)),)
                  ,),
                  ),
                SizedBox(height: 20,),
                Text("New user? Sign up here")
                ],
              )

            ],
          )
        ),
      ),
    );
  }
}
