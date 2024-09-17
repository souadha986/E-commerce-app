import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.grey[200],
                          filled: true,
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                          ),
                          hintText: 'Search',
                        ),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.menu,
                        size: 50,
                      ),
                      margin: EdgeInsets.only(left: 8, right: 8),
                    )
                  ],
                ),
                margin: EdgeInsets.only(
                  left: 25,
                  // top: 0,
                )),
            Container(
              child: Text(
                'Categories',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 20),
              ),
              margin: EdgeInsets.only(top: 40, left: 25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.grey[200],
                        child: Icon(Icons.phone),
                      ),
                      Text('phone'),
                    ],
                  ),
                  margin: EdgeInsets.only(left: 25),
                ),
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.grey[200],
                        child: Icon(Icons.laptop),
                      ),
                      Text('laptops'),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.grey[200],
                        child: Icon(Icons.man),
                      ),
                      Text('man'),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.grey[200],
                        child: Icon(Icons.woman_outlined),
                      ),
                      Text('women'),
                    ],
                  ),
                  margin: EdgeInsets.only(right: 12),
                )
              ],
            ),
            Container(
              child: Text(
                'Best Selling',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 20),
              ),
              margin: EdgeInsets.only(top: 30, left: 25),
            ),
            Row(
              children: [
                Card(
                  child: Container(child: Image.network('')),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
