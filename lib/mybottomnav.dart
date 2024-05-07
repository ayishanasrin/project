import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MybottomNavbar extends StatefulWidget {
  void Function(int)? onTabChange;
  MybottomNavbar({super.key,required this.onTabChange});

  @override
  State<MybottomNavbar> createState() => _MybottomNavbarState();
}

class _MybottomNavbarState extends State<MybottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  GNav(
        color: Colors.grey,
        activeColor: Color.fromARGB(255, 248, 143, 58),
        tabBackgroundColor: Colors.white,
        tabActiveBorder: Border.all(color: Colors.black),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 15,
        onTabChange: (value) => widget.onTabChange,
        tabs: [
        GButton(icon: Icons.home_filled,text: 'Home',),
        GButton(icon: Icons.report,text: 'Report',),
        GButton(icon: Icons.add,text: 'Add',),
        GButton(icon: Icons.verified_user,text: 'Profile',),



      ])
    );
  }
}
