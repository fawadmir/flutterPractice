import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';
class HomePage extends StatelessWidget {
  final int days=30;
  final String name="Mir";
  @override
  Widget build(BuildContext context) {
    final dumyList=List.generate(5, (index) => CatalogModel.items[0]);
    return Scaffold(
    appBar: AppBar(
    title: Center(
    child: Text("Catalog App"),
    ),
    ),  
    body:Padding(
    padding: const EdgeInsets.all(16.0),
    child: ListView.builder(
    //itemCount: CatalogModel.items.length,
    itemCount: dumyList.length,

    itemBuilder: (context, index){
    return ItemWidget(
    //item: CatalogModel.items[index],
    item:dumyList[index],
    );  
    },
    ),
    ),
    drawer: MyDrawer(),        
    );
  }
}