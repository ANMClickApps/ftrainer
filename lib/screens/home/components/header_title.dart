import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: const TextSpan(
              text: 'Workout and ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                    text: 'FTrainer ',
                    style: TextStyle(color: Color(0xffFFB5A9))),
                TextSpan(text: 'app'),
              ]),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            AppLocalizations.of(context)!.mainText,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.normal,
                height: 1.3,
                color: Colors.white),
          ),
        )
      ],
    );
  }
}
