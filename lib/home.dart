
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/add.dart';
import 'package:flutter_application_1/first.dart';
import 'package:flutter_application_1/mybottomnav.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/report.dart';

class newhome extends StatefulWidget {
   newhome({super.key});

  @override
  State<newhome> createState() => _newhomeState();
}

class _newhomeState extends State<newhome> {
  
  int _SelectedIndex=0;
  
  final List<Widget> pages=[
    const first(),
    const report(),
    const add(),
    const profile(),
    
    

  ];
  NavigateBottomBar(int index) {
    setState(() {
      _SelectedIndex=index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      bottomNavigationBar: MybottomNavbar(onTabChange: (index) =>NavigateBottomBar(index),),
      body: pages[_SelectedIndex],      
    );
  }
  
  
}