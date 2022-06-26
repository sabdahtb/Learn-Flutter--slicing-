// import 'package:belajar_flutter/presentation/profile/widgets/profile_card_widget.dart';
import 'package:belajar_flutter/presentation/profile/widgets/profile_card_widget.dart';
import 'package:flutter/material.dart';
import 'widgets/low_card_widget.dart';
import 'widgets/side_scroll_view_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 235, 235),
      body: SafeArea(
        // child: ProfileCardWidget(),
        // ignore: avoid_unnecessary_containers
        child: Container(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: const [
                ProfileCardWidget(),
                SideScrollViewWidget(),
                LowCardWidget()
              ],
            )),
      ),
    );
  }
}
