import 'package:flutter/material.dart';
import 'package:ftrainer/screens/home/components/days/day_info.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'day_item.dart';

class DetailBody extends StatefulWidget {
  const DetailBody({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailBody> createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  int _curentIndex = 0;
  late List<Widget> _children;

  @override
  Widget build(BuildContext context) {
    _children = [
      DayInfo(indexDay: 0, description: AppLocalizations.of(context)!.dayOne),
      DayInfo(
          indexDay: 1, description: AppLocalizations.of(context)!.daySecond),
      DayInfo(indexDay: 2, description: AppLocalizations.of(context)!.dayThree),
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: SizedBox(
              height: 100.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: ((BuildContext context, int index) {
                    return Row(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(12.0),
                            onTap: () {
                              setState(() {
                                _curentIndex = index;
                              });
                            },
                            child: DayItem(
                              dayNumber: index + 1,
                              isActive: _curentIndex == index ? true : false,
                            ),
                          ),
                        ),
                        if (_curentIndex != 3) const SizedBox(width: 8.0)
                      ],
                    );
                  })),
            ),
          ),
        ),
        _children[_curentIndex],
      ],
    );
  }
}
