import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFBFBFB),
        body: Row(children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x0C000000),
                  blurRadius: 20,
                  offset: Offset(8, 0),
                  spreadRadius: 3,
                )
              ],
            ),
            width: 100,
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: CircleAvatar(radius: 25),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home_filled,
                        size: 40,
                      ),
                      SizedBox(height: 16),
                      Icon(
                        Icons.contact_page,
                        size: 40,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Icon(
                        Icons.palette,
                        size: 40,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Icon(
                        Icons.manage_search_outlined,
                        size: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(60.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'เมนูหลัก',
                        style: TextStyle(fontSize: 32),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.notifications_outlined,
                            size: 32,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.account_circle_outlined, size: 32),
                          SizedBox(width: 8),
                          Text(
                            'Username',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: Center(
                      child: Text('This is content'),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
