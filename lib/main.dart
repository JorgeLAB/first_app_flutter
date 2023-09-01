import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

void main() {
  runApp(const MyApp());
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
      home: Page(),
    );
  }
}

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 60),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        color: Colors.blue,
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://i.pinimg.com/originals/6e/50/fc/6e50fc681a3cea1688ea641b63e96554.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 90),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'GorongGiring',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Ionicons.globe_outline),
                    SizedBox(width: 10),
                    Icon(Ionicons.paper_plane_outline),
                  ],
                ),
              ],
            ),
            Container(height: 50),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonTheme(
                    minWidth: 200.0,
                    height: 100.0,
                    child: OutlinedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(),
                        ),
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text('Moment'),
                        ],
                      ),
                    )),
                  OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(),
                      ),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text('Status'),
                      ],
                    ),
                  ),                    
                ]
              ),
            Container(height: 50),
            Column(
              children: [
                Container(width: 300, height: 20, child: Placeholder()),
                Container(width: 300, height: 80, child: Placeholder()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}