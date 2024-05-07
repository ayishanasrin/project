// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/button.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
            width: 1033,
            height: 933,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg.png"), fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Sign up to",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Expense Track Pro",
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 800,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                            height: 10,
                          ),
                          Text(
                            'name',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28, right: 28),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xEFF0F5))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xEFF0F5))),
                            fillColor: Color.fromARGB(255, 241, 241, 241),
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                            height: 10,
                          ),
                          Text(
                            'Email',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28, right: 28),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xEFF0F5))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xEFF0F5))),
                            fillColor: Color.fromARGB(255, 241, 241, 241),
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                            height: 10,
                          ),
                          Text(
                            'Phone',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28, right: 28),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xEFF0F5))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xEFF0F5))),
                            fillColor: Color.fromARGB(255, 241, 241, 241),
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      
                      DropdownButton<String>(
            value: 'Site Supervisor',
            onChanged: (String? newValue) {
              // Your code when dropdown is changed
            },
            items: <String>['Site Supervisor', 'HR', 'Employee']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        
      
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'password',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28, right: 28),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xEFF0F5))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xEFF0F5))),
                            fillColor: Color.fromARGB(255, 241, 241, 241),
                            filled: true,
                          ),
                        ),
                      ),
                       SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Confirm password',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28, right: 28),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xEFF0F5))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xEFF0F5))),
                            fillColor: Color.fromARGB(255, 241, 241, 241),
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      MyButton(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => register(),
                          ));
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28, right: 28),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           
                            Text(
                              "Have an account?",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ],
    ));
  }
}
