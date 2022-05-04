import 'package:flutter/material.dart';

import '../../../style/brand_color.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 50.0,
        left: 18.0,
        child: Container(
            height: 44.0,
            width: 44.0,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: const Icon(
              Icons.dashboard_outlined,
              color: BrandColor.neutralDark,
            )));
  }
}
