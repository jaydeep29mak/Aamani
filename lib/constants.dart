import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

var defaultBackgroundColor = Colors.grey[300];
var appBarColor = Colors.grey[900];
var myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: Text(' '),
  centerTitle: false,
);
var drawerTextColor = TextStyle(color: Colors.grey[600], fontSize: 12.0);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);

var myDrawer = Drawer(
  backgroundColor: Colors.white,
  elevation: 0,
  child: Column(
    children: [
      DrawerHeader(
        child: Padding(
          padding: tilePadding,
          child: Text(
            'H E L P',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
            leading: Icon(
              Icons.home,
              color:  Colors.red,
            ),
            title: Text(
              'S U P P O R T  H O M E',
              style: TextStyle(fontSize: 12.0, color: Colors.red),
            ),
            onTap: () {
              Fluttertoast.showToast(
                msg: 'S U P P O R T  H O M E',
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.red,
                textColor: Colors.white,
              );
            }),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            'F A Q S',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: Icon(Icons.info),
          title: Text(
            'N E W F E A T U R E S',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: Icon(Icons.details),
          title: Text(
            'T R A I N I N G',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: Icon(Icons.logout),
          title: Text(
            'D E V E L O P E R S',
            style: drawerTextColor,
          ),
        ),
      ),
    ],
  ),
);
