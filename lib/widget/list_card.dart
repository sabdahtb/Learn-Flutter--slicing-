import 'package:belajar_flutter/presentation/item_detail/item_detail_page.dart';
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  List<String> listGambar = [
    'assets/images/satu.jpg',
    'assets/images/dua.jpg',
    'assets/images/tiga.jpg',
    'assets/images/empat.jpg',
    'assets/images/lima.jpg',
    'assets/images/enam.jpg',
    'assets/images/tujuh.jpg',
    'assets/images/satu.jpg',
    'assets/images/dua.jpg',
    'assets/images/tiga.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: GridView.builder(
            itemCount: listGambar.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
            itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ItemDetailPage(
                            gambar: listGambar[index],
                          )));
                },
                child: ImageItem(listGambar: listGambar[index]))));
  }
}

class ImageItem extends StatelessWidget {
  const ImageItem({Key? key, required this.listGambar}) : super(key: key);

  final String listGambar;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey,
        height: 200,
        width: 200,
        child: Image.asset(
          listGambar,
          fit: BoxFit.cover,
        ));
  }
}
