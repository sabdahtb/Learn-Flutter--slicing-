import 'package:flutter/material.dart';
import 'title_subtitle_widget.dart';

class SideScrollViewWidget extends StatelessWidget {
  const SideScrollViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleSubtitleWidget(),
        Container(
          padding: const EdgeInsets.all(5),
          height: 210,
          child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 230,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 7,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://picsum.photos/seed/picsum/200/300'))),
                            )),
                        Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Nature',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Flexible(
                                    child: Text(
                                  'Let us Palnt more tree to be a champion',
                                  style: TextStyle(fontSize: 18),
                                ))
                              ],
                            ))
                      ],
                    ));
              }),
        )
      ],
    );
  }
}
