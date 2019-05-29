import 'package:flutter/material.dart';

var bottomNavBarItems = List<BottomNavigationBarItem>();

void main() {
  addIconsToBNB();

  var myApp = runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App Bar'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
              image: NetworkImage(
                  'https://img4.goodfon.com/wallpaper/nbig/2/db/indoneziia-bali-more-zaliv-poberezhe-tropiki-dzhungli-gory-z.jpg')),
        ),
        backgroundColor: Colors.blueGrey[100],
        bottomNavigationBar: BottomNavigationBar(
          items: bottomNavBarItems,
          showUnselectedLabels: true,
          backgroundColor: Colors.lightGreen[400],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.account_circle),
        ),
      ),
    ),
  );
}

void addIconsToBNB() {
  bottomNavBarItems.add(BottomNavigationBarItem(
      icon: Icon(Icons.ac_unit),
      title: Text('Unit', style: TextStyle(color: Colors.black))));
  bottomNavBarItems.add(BottomNavigationBarItem(
      icon: Icon(Icons.adb),
      title: Text('ADB', style: TextStyle(color: Colors.black))));
  bottomNavBarItems.add(BottomNavigationBarItem(
      icon: Icon(Icons.add_a_photo),
      title: Text(
        'Camera',
        style: TextStyle(color: Colors.black),
      )));
}
