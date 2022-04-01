import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //The counter
  // ignore: unused_field
  int _counter = 0;
  // Add 1 to the '_counter'
  // ignore: unused_element
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Remove 1 to the '_counter'
  // ignore: unused_element
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.accessibility),
        title: const Text("Flutter Calculator"),
        // ignore: prefer_const_literals_to_create_immutables
        actions: <Widget>[
          // First button -decrement
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: _decrementCounter,
          ),

          // Second button -increment
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _incrementCounter,
          ),
        ],
      ),
      body: Center(
        child: Text(
          '$_counter',
          // ignore: prefer_const_constructors
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }
}
