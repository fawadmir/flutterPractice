import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  //home: LoginPage(),
  home:HomePage(),
  themeMode: ThemeMode.light,
  theme: ThemeData(primarySwatch:Colors.deepPurple),
  darkTheme: ThemeData(
  brightness: Brightness.dark,  
  ),
  //debugShowCheckedModeBanner: false,
  routes: {
  MyRoutes.homeRoute:(context)=>HomePage(),
  MyRoutes.loginRoute:(context)=>LoginPage(),
  },
  ); 
  }
}