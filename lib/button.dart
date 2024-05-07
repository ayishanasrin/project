import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  void Function()? onTap;
  
  MyButton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 150),
        
        decoration: BoxDecoration(color:Color.fromARGB(255, 251, 170, 8),borderRadius: BorderRadius.circular(5)),
        child:const Text('Sign in',
      
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 14),
      
        
      
      
      ) ,
      
      
      
      
      
      
      
      
      ),
    );
  }
}