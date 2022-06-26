import 'package:flutter/material.dart';

class TitleSubtitleWidget extends StatelessWidget {
  const TitleSubtitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Notable Works',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          Text(
            'Based on Popularity Articles',
            style: TextStyle(color: Colors.black54),
          )
        ],
      ),
    );
  }
}
