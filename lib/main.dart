import 'package:flutter/material.dart';
import 'package:flutter_challenge_01/presentation/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI challenge',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith(
                (states) => EdgeInsets.symmetric(horizontal: 80, vertical: 20)),
            elevation: MaterialStateProperty.resolveWith((states) =>15.0),
            shadowColor: MaterialStateProperty.resolveWith(
                (states) => Colors.blue.withOpacity(0.6)),
            backgroundColor: MaterialStateProperty.resolveWith(
                (states) => Colors.blueAccent.shade700),
            shape: MaterialStateProperty.resolveWith(
              (states) => RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
            ),
            textStyle:MaterialStateProperty.resolveWith((states) => TextStyle(fontWeight: FontWeight.w800)),
          ),
        ),
        colorScheme: ThemeData().colorScheme.copyWith(
              secondary: Colors.blue,
            ),
        textTheme: TextTheme(
          headline5: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.grey.shade800,
          ),
          subtitle2: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade500,
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
