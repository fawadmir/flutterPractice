import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final int days=30;
  final String name="Mir";
  
  @override
  void initState() {
    super.initState();
    loadData();
  }


  loadData() async{
   await Future.delayed(Duration(seconds: 2));
   final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
   final decodedData= jsonDecode(catalogJson);
   final productsData=decodedData["products"];
   CatalogModel.items=List.from(productsData)
   .map<Item>((item) => Item.fromMap(item))
   .toList();
   setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //final dumyList=List.generate(5, (index) => CatalogModel.items[0]);
    return Scaffold(
    appBar: AppBar(
    title: Center(
    child: Text("Catalog App"),
    ),
    ),  
    body:Padding(
    padding: const EdgeInsets.all(16.0),
    child: (CatalogModel.items !=null && CatalogModel.items.isNotEmpty)?
    ListView.builder(
    itemCount: CatalogModel.items.length,
    //itemCount: dumyList.length,

    itemBuilder: (context, index){
    return ItemWidget(
    item: CatalogModel.items[index],
    //item:dumyList[index],
    );  
    },
    ): Center(child: CircularProgressIndicator()),
    ),
    drawer: MyDrawer(),        
    );
  }
}