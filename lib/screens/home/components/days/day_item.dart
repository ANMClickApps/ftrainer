import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../style/brand_color.dart';
import '../../../../style/brand_text.dart';

class DayItem extends StatelessWidget {
  const DayItem({
    Key? key,
    this.isActive = false,
    required this.dayNumber,
  }) : super(key: key);

  final bool isActive;
  final int dayNumber;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      width: isActive ? 100.0 : 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        color: isActive ? BrandColor.cardDayActive : BrandColor.cardDay1,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: isActive
                ? BrandColor.cardDayActive.withOpacity(0.3)
                : BrandColor.cardDay.withOpacity(0.3),
            spreadRadius: 2.0,
            blurRadius: 4.0,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppLocalizations.of(context)!.day,
            style: isActive
                ? BrandText.dayTextTitleActive
                : BrandText.dayTextTitle,
          ),
          Text(
            dayNumber.toString(),
            style: isActive
                ? BrandText.dayTextNumberActive
                : BrandText.dayTextNumber,
          ),
        ],
      ),
    );
  }
}
