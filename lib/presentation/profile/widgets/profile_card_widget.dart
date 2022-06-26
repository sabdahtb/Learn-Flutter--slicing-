// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10)]),
      child: Column(
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            height: 150,
            child: Row(
              children: [
                Container(
                  width: 140,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/satu.jpg',
                        )),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Maman Racing',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      'Seorang Penjual Es',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(87, 90, 181, 255),
                          borderRadius: BorderRadius.circular(8)),
                      width: 189,
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            TextJumlah(judul: 'Articles', jumlah: '23'),
                            TextJumlah(judul: 'Rating', jumlah: '8.7'),
                            TextJumlah(judul: 'Followers', jumlah: '9.6k'),
                          ]),
                    ))
                  ],
                )
              ],
            ),
          ),
          Flexible(
            child: Container(
              height: 80,
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        'Chat',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      color: Colors.blue,
                      onPressed: () {},
                      child: const Text(
                        'Follow',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TextJumlah extends StatelessWidget {
  const TextJumlah({Key? key, required this.judul, required this.jumlah})
      : super(key: key);

  final String judul;
  final String jumlah;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          judul,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black45),
        ),
        Text(jumlah,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black45))
      ],
    );
  }
}
