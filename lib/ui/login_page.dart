import 'forgot_password.dart';
import 'register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          // width: 0.0 produces a thin "hairline" border
          borderSide: BorderSide(
            color: Colors.brown,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(32.0),
        ),
        hintText: 'Email',
        
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: false,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          // width: 0.0 produces a thin "hairline" border
          borderSide: BorderSide(
            color: Colors.brown.shade500,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(32.0),
        ),
        hintText: 'Password',
        hintStyle: TextStyle(
          color: Colors.brown.shade500,
        ),
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.brown.shade500,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {},
          color: Colors.brown.shade500,
          child: Text(
            'Log In',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    final registerLabel = FlatButton(
      child: Text(
        'Sign Up',
        style: TextStyle(color: Colors.brown[500]),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(RegisterPage.tag);
      },
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot Password?',
        style: TextStyle(color: Colors.brown[500]),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(ForgotPage.tag);
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24, right: 24),
          children: <Widget>[
            email,
            SizedBox(
              height: 8.0,
            ),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel,
            registerLabel
          ],
        ),
      ),
    );
  }
}
