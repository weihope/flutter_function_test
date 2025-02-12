import 'package:flutter/material.dart';

class MouseRegionPage extends StatelessWidget {
  const MouseRegionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MouseRegion Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MouseRegion Example'),
      ),
      body: Center(
        child: Column(
          children: [
            MouseRegion(
              onEnter: (event) {
                setState(() {
                  _isHovering = true;
                });
              },
              onExit: (event) {
                setState(() {
                  _isHovering = false;
                });
              },
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isHovering ? Colors.blue : Colors.grey,
                ),
                onPressed: () {
                  // 按钮点击事件
                },
                child: const Text('Hover over me!'),
              ),
            ),
            if (_isHovering)
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(10),
                color: Colors.amber,
                child: const Text('This is a container shown on hover'),
              ),
          ],
        ),
      ),
    );
  }
}
