import 'package:flutter/material.dart';
import 'package:ftrainer/style/brand_color.dart';

class CountButton extends StatelessWidget {
  const CountButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.isPlus = false,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;
  final bool isPlus;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(BrandColor.tabActiveIcon),
        minimumSize: MaterialStateProperty.all(const Size(50.0, 40.0)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: const BorderSide(color: BrandColor.primary3))),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
            height: 1.0,
            color: BrandColor.primary3,
            fontSize: isPlus ? 16.0 : 22.0,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
