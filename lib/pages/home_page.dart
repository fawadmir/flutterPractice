import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
class HomePage extends StatelessWidget {
  final int days=30;
  final String name="Mir";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Center(
    child: Text("Catalog App"),
    ),
    ),  
    body: Center(
    child: Container(
    child: Text("Welcome to $days days to flutter $name"),),),
    drawer: MyDrawer(),        
    );
  }
}