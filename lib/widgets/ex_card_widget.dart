import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../style/brand_text.dart';

class ExCardWidget extends StatelessWidget {
  const ExCardWidget({
    Key? key,
    required this.title,
    required this.groupBody,
    required this.dayNumber,
    required this.gradient,
    required this.assetName,
  }) : super(key: key);

  final String title;
  final String groupBody;
  final int dayNumber;
  final LinearGradient gradient;
  final String assetName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      constraints: const BoxConstraints(maxWidth: 340.0),
      height: 384.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
          bottomLeft: Radius.circular(40.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 0,
            blurRadius: 4.0,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 230.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0),
                  ),
                  gradient: gradient),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(assetName),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                  child: Text(
                    title,
                    style: BrandText.exCardTitle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 12.0, 10.0, 12.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/ic_heard.svg'),
                      const SizedBox(width: 12.0),
                      Text(groupBody, style: BrandText.exCardSubTitle),
                      const Spacer(),
                      Text('${AppLocalizations.of(context)!.day} $dayNumber',
                          style: BrandText.exCardDay),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
