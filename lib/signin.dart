// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/button.dart';
import 'package:flutter_application_1/register.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: 
      
      Container(width: 1033,height: 1033,
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/bg.png"), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              const Text("Sign in to",style: TextStyle(color: Colors.white,fontSize: 36,fontWeight: FontWeight.bold),),            
              const Text("Expense Track Pro",style: TextStyle(color: Colors.yellow,fontSize: 36,fontWeight: FontWeight.bold),),
              SizedBox(height: 25,),
              Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                 
                child:  Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 30,height: 10,),
                        Text('name',style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 28,right: 28),
                      child: TextField(
                        decoration: InputDecoration(
                          
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xEFF0F5))),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xEFF0F5))),
                          fillColor: Color.fromARGB(255, 241, 241, 241),
                          filled: true,
                          
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: const [
                        SizedBox(width: 30,),
                        Text('password',style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 28,right: 28),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xEFF0F5))),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xEFF0F5))),
                          fillColor: Color.fromARGB(255, 241, 241, 241),
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                  MyButton(onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => register(),));
                  },) ,
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 28,right: 28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Dont have an account?", style:TextStyle(color: Colors.grey) ,),
                        Text("Forgot Password?",style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                  ),
                  
                   
                  ],
                  
                    
                ),
              )
              
          ],
        )
        
      )
      
    );
  }
}