import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ftrainer/screens/home/components/details_exercise.dart';
import '../../../../../model/card_exercises.dart';
import '../../../../../style/brand_color.dart';
import '../../../../../widgets/ex_card_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ExercisesScreen extends StatelessWidget {
  const ExercisesScreen({Key? key, required this.data}) : super(key: key);

  final GroupExModel data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: BrandColor.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'FTrainer',
          style: TextStyle(
            color: Color(0xffFFB5A9),
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/bg_h2.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
              top: 46.0,
              right: 18.0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                      height: 85.0,
                      width: 85.0,
                      child: Image.asset('assets/images/day_circule.png')),
                  Text(
                    data.dayNumber.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: BrandColor.cardDayText, fontSize: 48.0),
                  ),
                ],
              )),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: RichText(
                      text: TextSpan(
                        text: AppLocalizations.of(context)!.exerciseFor,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                          height: 1.3,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: data.title,
                            style: const TextStyle(
                              color: Color(0xffFFB5A9),
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                              height: 1.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: data.exercises.length,
                        itemBuilder: (BuildContext context, int index) {
                          List<LinearGradient> _bg = [
                            BrandColor.gradient1,
                            BrandColor.gradient2,
                            BrandColor.gradient3,
                            BrandColor.gradient4,
                            BrandColor.gradient5,
                          ];
                          final _random = Random();
                          LinearGradient _gradient =
                              _bg[_random.nextInt(_bg.length)];
                          return InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => DetailsExercise(
                                        exercise: data.exercises[index]))),
                            child: ExCardWidget(
                              assetName: data.exercises[index].images[0],
                              title: data.exercises[index].title,
                              groupBody: data.title,
                              dayNumber: data.dayNumber,
                              gradient: _gradient,
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          )
          // SingleChildScrollView(child: const DetailBody())
        ],
      ),
    );
  }
}
