import 'package:flutter/material.dart';
import 'screens/validation_screen.dart';
import 'screens/job_screen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: 'OpenSans',
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      initialRoute: ValidationScreen.id,
      routes: {
        ValidationScreen.id: (context) => ValidationScreen(),
        JobScreen.id: (context) => JobScreen(),
      },
    );
  }
}
