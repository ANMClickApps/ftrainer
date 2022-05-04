import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ftrainer/model/card_exercises.dart';
import 'package:ftrainer/style/brand_color.dart';
import 'package:ftrainer/style/brand_text.dart';

class RecomendBody extends StatelessWidget {
  const RecomendBody({Key? key, required this.ex}) : super(key: key);
  final Exercise ex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          Text(
            ex.description,
            style: BrandText.tabDescription,
          ),
          const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: const BoxDecoration(
                        color: BrandColor.neutralLight, shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SvgPicture.asset(
                        'assets/images/ic_heard1.svg',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20.0),
              Text(
                ex.countOfResult,
                style: BrandText.tabCount,
              ),
            ],
          )
        ],
      ),
    );
  }
}
