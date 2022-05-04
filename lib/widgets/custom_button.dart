import 'package:flutter/material.dart';
import 'package:ftrainer/style/brand_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.width,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 44.0,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          //  gradient: BrandColor.gradient6,
          color: BrandColor.tabActive,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(color: BrandColor.primary3)),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
          ),
          onPressed: onPressed,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
