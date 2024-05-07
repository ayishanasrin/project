// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/register.dart';
import 'package:flutter_application_1/signin.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {

  @override
  void initState() {
    Signin();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: 
      Container(width: 1033,height: 1033,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/bg.png"), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("EXPENSETRACK PRO",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          ],
        )
        
      )
    );
  }

   @override
  void dispose() {
    super.dispose();
  }

  Future<void> Signin() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) {
        return register() ;
      }),
    );
  }

}
