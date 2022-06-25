// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white54,
        title: Text("Belajar Flutter",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            )),
        actions: const <Widget>[
          Icon(Icons.account_circle),
          Icon(Icons.add_a_photo_rounded),
        ],
      ),

      body: Container(
        color: Colors.lightBlue,
        padding: EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: const <Widget>[
            Icon(
              Icons.accessibility,
              size: 50,
              color: Colors.white,
            ),
            Icon(
              Icons.accessible_forward,
              size: 50,
              color: Colors.white,
            ),
            Icon(
              Icons.wheelchair_pickup_outlined,
              size: 50,
              color: Colors.white,
            ),
          ],
        ),
      ),

      // PELAJARAN 2 =====================================================
      // body: Container(
      //   color: Colors.black12,
      //   padding: EdgeInsets.all(20),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     mainAxisSize: MainAxisSize.min,
      //     children: const <Widget>[
      //       Text('Senin'),
      //       Text('Selasa'),
      //       Text('Rabu'),
      //     ],
      //   ),
      // )

      // PELAJARAN 1 =====================================================
      // body: Container(
      //   margin: EdgeInsets.all(10),
      //   padding: EdgeInsets.all(100),
      //   color: Colors.amber[200],
      //   child: Icon(
      //     Icons.add_moderator_outlined,
      //     color: Colors.white,
      //     size: 100.0,
      //   ),
      // ),
    );
  }
}
