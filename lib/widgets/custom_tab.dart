import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ftrainer/style/brand_color.dart';
import 'package:ftrainer/style/brand_text.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({
    Key? key,
    required this.title,
    required this.imagePath,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;
  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              isActive
                  ? Container(
                      height: 24.0,
                      width: 24.0,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: BrandColor.tabActiveIcon),
                    )
                  : const SizedBox(),
              SvgPicture.asset(imagePath),
            ],
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: isActive ? BrandText.tabTitleActive : BrandText.tabTitle,
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
