// ignore_for_file: deprecated_member_use
// import 'package:belajar_flutter/widget/list_card.dart';
import 'package:belajar_flutter/widget/list_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white54,
        title: const Text("Belajar List/Grid View",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            )),
        actions: const <Widget>[
          Icon(Icons.account_circle),
          Icon(Icons.add_a_photo_rounded),
        ],
      ),
      body: SafeArea(child: ListCard()),
    );
  }
}

          // child: ListView.builder(
          //     itemCount: listGambar.length,
          //     itemBuilder: (context, index) => Container(
          //         color: Colors.grey,
          //         height: 200,
          //         width: 200,
          //         margin: const EdgeInsets.only(top: 10),
          //         child: Image.asset(
          //           listGambar[index],
          //           fit: BoxFit.cover,
          //         )))),
