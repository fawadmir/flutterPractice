import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
 
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch:Colors.deepPurple),
      darkTheme: ThemeData(
      brightness: Brightness.dark,  
      ),
     
      routes: {
        "/login":(context)=>LoginPage(),
      },
      );
  }
}