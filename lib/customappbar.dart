import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: CustomAppBarClipper(),
            child: Container(
              height: 150,
              color: Colors.blue, // AppBar 背景颜色
              child: const Center(
                child: Text(
                  'Profile',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text("Profile"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.store)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.directions_car)),
            const SizedBox(width: 40), // 为 FloatingActionButton 预留空间
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.local_shipping)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

// 自定义 AppBar 波浪形状
class CustomAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.4);

    path.quadraticBezierTo(size.width * 0.4, size.height * 0.4,
        size.width * 0.4, size.height * 0.4);

    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.5, size.width * 0.4, size.height * 2);

    // **额外缓冲曲线（过渡到第三段，防止尖角）**
    path.quadraticBezierTo(size.width * 0.6, size.height * 1.6,
        size.width * 0.75, size.height * 1.5);

    path.cubicTo(size.width * 0.85, size.height * 1.4, size.width * 0.9,
        size.height * 1.2, size.width, size.height);
    path.lineTo(size.width, 0); // 右上角连接
    path.close(); // 关闭路径

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
