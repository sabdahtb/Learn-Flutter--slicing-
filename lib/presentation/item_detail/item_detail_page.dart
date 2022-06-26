import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  ItemDetailPage({required this.gambar});

  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 300,
        width: double.infinity,
        child: Image.asset(
          gambar,
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}
