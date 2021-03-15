import 'package:backoffice/screens/borrow.dart';
import 'package:backoffice/screens/returnof.dart';
import 'package:backoffice/screens/sellstuff.dart';
import 'package:backoffice/screens/stockof.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final tabs = [
    Center(
      child: Text(
        'Borrow',
        style: TextStyle(fontSize: 30),
      ),
    ),
    Center(
      child: Text(
        'Return',
        style: TextStyle(fontSize: 30),
      ),
    ),
    Center(
      child: Text(
        'Sell',
        style: TextStyle(fontSize: 30),
      ),
    ),
    Center(
      child: Text(
        'Stock',
        style: TextStyle(fontSize: 30),
      ),
    ),
  ];

  final List<Widget> _children = [
    BorrowPage(),
    ReturnOfPage(),
    SellstuffPage(),
    StockOfPage(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        iconSize: 30,
        selectedFontSize: 17,
        unselectedFontSize: 15,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.backup_rounded),
              // ignore: deprecated_member_use
              title: Text(
                'รายการยืม',
                style: TextStyle(fontSize: 14),
              ),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.keyboard_return_outlined),
              // ignore: deprecated_member_use
              title: Text(
                'รายการคืน',
                style: TextStyle(fontSize: 14),
              ),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.store_mall_directory_outlined),
              // ignore: deprecated_member_use
              title: Text(
                'รายการขาย',
                style: TextStyle(fontSize: 14),
              ),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.storage_sharp),
              // ignore: deprecated_member_use
              title: Text(
                'คลังสินค้า',
                style: TextStyle(fontSize: 14),
              ),
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
