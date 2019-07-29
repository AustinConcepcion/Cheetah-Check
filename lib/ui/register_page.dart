import 'package:flutter/material.dart';
import 'package:cheetah_check_refactor/ui/student_page.dart';
import 'package:cheetah_check_refactor/ui/instructor_page.dart';

import 'login_page.dart';

class RegisterPage extends StatefulWidget {

  static String tag = 'register-page';
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var _type;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _type = 'What kind of user are you?';
  }

  @override
  Widget build(BuildContext context) {

    final first = TextFormField
      (
      autofocus: false,
      obscureText: false,
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
        hintText: 'First Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
        border: OutlineInputBorder
          (
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );

    final last = TextFormField
      (
      autofocus: false,
      obscureText: false,
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
        hintText: 'Last Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
        border: OutlineInputBorder
          (
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );

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
        hintText: 'Email' ,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
        border: OutlineInputBorder
          (
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );

    final password = TextFormField
      (
      autofocus: false,
      obscureText: false,
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
        hintText: 'Password' ,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
        border: OutlineInputBorder
          (
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );


    final userId = TextFormField
      (
      autofocus: false,
      obscureText: false,
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
        hintText: 'NID',
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
        border: OutlineInputBorder
          (
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );



    int _user;
    var users = <String>['Student', 'Instructor'];

    final dropButton = DropdownButton
      (
      hint: Text(_type),
      value: _user == null ? null : users[_user],
      items: users.map((value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: TextStyle(color: Colors.white),),
        )
      ).toList(),
      onChanged: (value) {
        print(value);
        setState(() {
          _type = value;
          _user = users.indexOf(value);
        });
      },
    );

    final submitButton = Padding
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
            if (_type == 'Student')
              Navigator.of(context).pushNamed(StudentPage.tag);
            if (_type == 'Instructor')
              Navigator.of(context).pushNamed(InstructorPage.tag);
          },
          color: Colors.brown,
          child: Text('Submit', style: TextStyle(color: Colors.white),),
        ),
      ),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center
          (
          child: ListView
            (
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24,right: 24),
            children: <Widget>
            [
              first,
              SizedBox(height: 4.0,),
              last,
              SizedBox(height: 4.0,),
              email,
              SizedBox(height: 4.0,),
              password,
              SizedBox(height: 4.0,),
              userId,
              SizedBox(height: 4.0,),
              dropButton,
              submitButton
            ],
          ),
        ),
      ),
    );
  }
}