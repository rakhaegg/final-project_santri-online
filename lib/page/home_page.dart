

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:santri_online/page/absensi.dart';
import 'package:santri_online/page/akun.dart';
import 'package:santri_online/page/catatan.dart';
import 'package:santri_online/page/create_santri.dart';
import 'package:santri_online/page/permainan.dart';
import 'package:santri_online/page/santri_list.dart';
import 'package:santri_online/page/utama.dart';
import 'package:santri_online/platform.dart';
import 'package:santri_online/provider/santri_provider.dart';
import 'package:santri_online/service/api_service.dart';




class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _bottomNavIndex = 0;
  static const String _headlineText = 'List';
  static const String _headLineText2 = 'Search';
  final List<Widget> _listWidget = [
    
    
    
    CrateSantri(),
    
    
  ];

  List<BottomNavigationBarItem> _bottomNavBarItems = [
   BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
          backgroundColor: Colors.green,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
          backgroundColor: Colors.purple,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
          backgroundColor: Colors.pink,
        ),
   
  ];

  void _onBottomNavTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      body: _listWidget[_bottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        items: _bottomNavBarItems,
        onTap: _onBottomNavTapped,
      ),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: _bottomNavBarItems),
      tabBuilder: (context, index) {
        return _listWidget[index];
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}