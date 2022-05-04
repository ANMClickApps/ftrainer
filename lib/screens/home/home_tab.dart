import 'package:flutter/material.dart';
import 'components/card_main.dart';
import 'components/header_title.dart';

class HomeTab extends StatelessWidget {
  static const String id = 'home_tab';
  const HomeTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/bg_h1.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        // const MenuButton(),
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                SizedBox(height: 18.0),
                HeaderTitle(),
                SizedBox(
                  height: 34.0,
                ),
                CardMain()
              ],
            ),
          ),
        )
      ],
    );
  }
}
