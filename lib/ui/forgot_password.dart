import 'package:flutter/material.dart';
import 'login_page.dart';

class ForgotPage extends StatefulWidget {
  static String tag = 'forgot-page';
  @override
  _ForgotPageState createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    final email = TextFormField
      (
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration
        (
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
        border: OutlineInputBorder
          (
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );
    final resetButton = Padding
      (
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material
        (
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.brown.shade500,
        elevation: 5.0,
        child: MaterialButton
          (
          minWidth: 200.0,
          height: 42.0,
          onPressed: (){
            Navigator.of(context).pushNamed(LoginPage.tag);
          },
          color: Colors.brown,
          child: Text('Reset', style: TextStyle(color: Colors.white),),
        ),
      ),
    );

    final hint = Padding
      (
      padding: EdgeInsets.all(18.0),
      child: Text('Enter your email address to reset your password',
      style: TextStyle(color: Colors.brown.shade500),),
    );
    return Scaffold
      (
      appBar: AppBar
        (
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },),
      ),
      backgroundColor: Colors.white,
      body: Center
        (
        child: ListView
          (
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0,right:24.0),
          children: <Widget>
          [
            hint,
            email,
            SizedBox(height: 8.0,),
            resetButton
          ],
        ),
      ),
    );
  }
}