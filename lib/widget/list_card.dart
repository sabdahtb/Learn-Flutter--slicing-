import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      color: Colors.amber,
      child: const Text('Nama saya sabda'),
    );
  }
}
