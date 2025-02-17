import 'package:flutter/material.dart';

class SecondCustomAppbar extends StatelessWidget {
  const SecondCustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100), // 自定义 AppBar 高度
          child: Wrap(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: Column(
                  children: [
                    // 上半部分（左上 & 右上）
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.all(10),
                            color: Colors.transparent, // 左上
                            child: Text(
                              "左上",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.all(10),
                            color: Colors.transparent, // 右上
                            child: Text(
                              "右上",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // 下半部分（左下 & 右下）
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                              ),
                            ), // 左下
                            child: Text(
                              "左下",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.orange, // 右下

                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10))),
                            child: Text(
                              "右下",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
