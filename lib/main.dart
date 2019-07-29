import 'package:flutter/material.dart';
import 'package:cheetah_check_refactor/ui/instructor_page.dart';
import 'package:cheetah_check_refactor/ui/student_page.dart';
import 'package:cheetah_check_refactor/ui/register_page.dart';
import 'package:cheetah_check_refactor/ui/login_page.dart';
import 'package:cheetah_check_refactor/ui/forgot_password.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    RegisterPage.tag: (context) => RegisterPage(),
    ForgotPage.tag: (context) => ForgotPage(),
    InstructorPage.tag: (context) => InstructorPage(),
    StudentPage.tag: (context) => StudentPage()
  };
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.light,
          primaryColor: Colors.amber[700],
          accentColor: Colors.amber[600],
          canvasColor: Colors.amberAccent.shade400,
          buttonColor: Colors.brown,
          backgroundColor: Colors.white,
          dialogBackgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          cardColor: Colors.brown,
          hintColor: Colors.brown,
          // Define the default font family.
          fontFamily: 'Montserrat',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
        ),
      home: LoginPage(),
      routes: routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
