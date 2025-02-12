import 'package:flutter/material.dart';
import 'package:pcwebandmobileweb/customappbar.dart';
import 'package:pcwebandmobileweb/mouseregionpage.dart';

import 'dart:html' as html;

import 'package:pcwebandmobileweb/secondcustomappbar.dart';

void main() {
  //runApp(const MyApp());
  //runApp(const MouseRegionPage());
  runApp(const SecondCustomAppbar());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
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
            ElevatedButton(
              onPressed: () {
                html.window.open('https://www.example.com', '_blank');
              },
              child: Text('在新标签页中打开'),
            ),
            ElevatedButton(
              child: Text('new window'),
              onPressed: () {
                html.window.open('https://www.example.com', 'myWindow',
                    'width=600,height=400,menubar=yes,scrollbars=yes');
              },
            ),
            ElevatedButton(
              child: Text('my window'),
              onPressed: () {
                html.window.open('https://www.example.com', 'myWindow',
                    'menubar=yes,scrollbars=yes');
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
