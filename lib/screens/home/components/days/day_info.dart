import 'package:flutter/material.dart';
import 'package:ftrainer/model/card_exercises.dart';
import 'package:ftrainer/widgets/card_exercises.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../l10n/l10n.dart';

class DayInfo extends StatelessWidget {
  const DayInfo({
    Key? key,
    required this.indexDay,
    required this.description,
  }) : super(key: key);

  final int indexDay;
  final String description;

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final listEx = L10n.getListEx(locale.languageCode);
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
            child: RichText(
              text: TextSpan(
                text: description,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  height: 1.3,
                ),
                children: <TextSpan>[
                  if (indexDay == 0)
                    TextSpan(
                      text: AppLocalizations.of(context)!.dayOne2,
                      style: const TextStyle(
                        color: Color(0xffFFB5A9),
                        fontSize: 17.0,
                        height: 1.3,
                      ),
                    ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: listEx[indexDay].length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: [
                        if (index == 0)
                          const SizedBox(
                            width: 40.0,
                          ),
                        CardExercises(
                          exercise: listEx[indexDay][index],
                        ),
                        const SizedBox(
                          width: 30.0,
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
