import 'package:flutter/material.dart';

class LowCardWidget extends StatelessWidget {
  const LowCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: Colors.blueAccent, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blueAccent.shade700,
                borderRadius: BorderRadius.circular(6)),
            child: const Text(
              'Featured Article',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Flexible(
            child: Text(
              'Natural mood regnulation or ever absent in people depression.',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            ),
          )
        ],
      ),
    );
  }
}
