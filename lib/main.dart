import 'package:flutter/material.dart';
import 'package:flutter_application_1/first.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/page1.dart';
import 'package:flutter_application_1/register.dart';
import 'package:flutter_application_1/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  page1(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;
  @override
  void initState() {
    super.initState();
  }
  
  void _navigate() {
    setState(() {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => first(),));

    });
  }

  @override
  Widget build(BuildContext context) {
    print('hello');
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          
          FloatingActionButton(
            onPressed: _navigate,
            tooltip: 'Navigate',
            child: const Icon(Icons.navigate_next),
          ),
          FloatingActionButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => newhome(),));
            },
            tooltip: 'Navigate',
            child: const Icon(Icons.navigate_next),
          ),
        ],
      ), 
    );
  }
}
