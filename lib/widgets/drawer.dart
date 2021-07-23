import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imgUrl="https://firebasestorage.googleapis.com/v0/b/water-quality-checking.appspot.com/o/uploads%2FFWD-pic.jpg?alt=media&token=6b6d798d-7e4c-49ca-9e6d-4a2e22f3ef5a";

    return Drawer(
    child: Container(
    color: Colors.deepPurple,  
    child: ListView(
    padding: EdgeInsets.zero,  
    children: [
    DrawerHeader(
    padding: EdgeInsets.zero,  
    child: UserAccountsDrawerHeader(
    margin: EdgeInsets.zero,  
    accountName: Text("Fawad Mir"),
    accountEmail: Text("fawadmir25@gmail.com"),
    currentAccountPicture: CircleAvatar(
    backgroundImage: NetworkImage(imgUrl),
    ),
    ),  
    ), 
    ListTile(
    leading: Icon(CupertinoIcons.home,color:Colors.white), 
    title: Text("Home",textScaleFactor: 1.2,
    style:TextStyle(color: Colors.white),),
    ),

    ListTile(
    leading: Icon(CupertinoIcons.profile_circled,color:Colors.white), 
    title: Text("Profile",textScaleFactor: 1.2,
    style:TextStyle(color: Colors.white),),
    ),
     
    ListTile(
    leading: Icon(CupertinoIcons.mail,color:Colors.white), 
    title: Text("Email",textScaleFactor: 1.2,
    style:TextStyle(color: Colors.white),),
    ),
    ],  
    ),
    ),  
    );
  }
}