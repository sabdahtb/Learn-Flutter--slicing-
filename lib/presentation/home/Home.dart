// ignore_for_file: deprecated_member_use

import 'package:belajar_flutter/presentation/dashboard/Dashboard.dart';
import 'package:flutter/material.dart';
import '../../widget/icon_with_text.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white54,
        title: const Text("Belajar Flutter",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            )),
        actions: const <Widget>[
          Icon(Icons.account_circle),
          Icon(Icons.add_a_photo_rounded),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.lightBlue,
            height: 70,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  IconWithText(
                    icon: Icons.call,
                    text: 'Call',
                    theColor: Colors.yellow,
                  ),
                  IconWithText(
                    icon: Icons.arrow_circle_up_sharp,
                    text: 'To Top',
                    theColor: Colors.yellow,
                  ),
                  IconWithText(
                    icon: Icons.notification_important_outlined,
                    text: 'Info',
                    theColor: Colors.yellow,
                  ),
                ]),
          ),
          RaisedButton(
            child: const Text("Go To Dashboard"),
            onPressed: () {
              String title = "Berasal Dari Homepage";
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Dashboard(title)));
            },
          ),
        ],
      ),
    );
  }
}
