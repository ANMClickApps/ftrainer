import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ftrainer/model/card_exercises.dart';
import 'package:ftrainer/screens/home/components/days/exercises/exercises_screen.dart';
import 'package:ftrainer/style/brand_text.dart';
import 'dart:math' as math;
import '../../../style/brand_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CardExercises extends StatefulWidget {
  const CardExercises({Key? key, required this.exercise}) : super(key: key);

  final GroupExModel exercise;

  @override
  State<CardExercises> createState() => _CardExercisesState();
}

class _CardExercisesState extends State<CardExercises> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 290.0,
      child: Stack(
        children: [
          Transform.rotate(
            angle: -math.pi / 40,
            child: Container(
              decoration: BoxDecoration(
                color: BrandColor.cardColor2,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(60.0),
                  bottomRight: Radius.circular(60.0),
                  bottomLeft: Radius.circular(60.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: BrandColor.cardColor2.withOpacity(0.5),
                    offset: const Offset(0, 4),
                    blurRadius: 5.0,
                    spreadRadius: 3.0,
                  )
                ],
              ),
              height: 358.0,
              width: 270.0,
            ),
          ),
          Transform.rotate(
            angle: math.pi / 40,
            child: Container(
              decoration: BoxDecoration(
                color: BrandColor.cardColor1,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(60.0),
                  bottomRight: Radius.circular(60.0),
                  bottomLeft: Radius.circular(60.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: BrandColor.cardColor1.withOpacity(0.5),
                    offset: const Offset(0, -4),
                    blurRadius: 15.0,
                    spreadRadius: 3.0,
                  )
                ],
              ),
              height: 345.0,
              width: 280.0,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: BrandColor.cardColor1,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(60.0),
                bottomRight: Radius.circular(60.0),
                bottomLeft: Radius.circular(60.0),
              ),
            ),
            height: 345.0,
            width: 280.0,
          ),
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              width: 200.0,
              height: 300.0,
              child: Stack(
                children: [
                  Positioned(
                      top: -40.0,
                      right: -50,
                      child: Image.asset(
                        'assets/images/bg_card.png',
                        height: 280.0,
                      )),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff353535).withOpacity(0.2),
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    const Color(0xff353535).withOpacity(0.6),
                    const Color(0xffffffff),
                  ]),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(60.0),
                bottomRight: Radius.circular(60.0),
                bottomLeft: Radius.circular(60.0),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 100.0,
                  offset: Offset(0, 50),
                  spreadRadius: 0,
                )
              ],
            ),
            height: 330.0,
            width: 280.0,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ExercisesScreen(
                              data: widget.exercise,
                            ))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${AppLocalizations.of(context)!.day} ${widget.exercise.dayNumber}'
                                    .toUpperCase(),
                                style: BrandText.textDay,
                              ),
                              const SizedBox(height: 17.0),
                              Text(
                                widget.exercise.title,
                                style: BrandText.textDayTitle,
                              ),
                            ],
                          ),
                          Expanded(
                            child: SizedBox(
                                height: 110.0,
                                width: 200.0,
                                child: SvgPicture.asset(
                                  widget.exercise.imagePath,
                                  // fit: BoxFit.fitHeight,
                                )),
                          ),
                        ],
                      ),
                      const Spacer(),
                      _getExercises(widget.exercise.description),
                      const SizedBox(height: 26.0),
                      Row(
                        children: [
                          SizedBox(
                            height: 32.0,
                            width: 32.0,
                            child:
                                SvgPicture.asset('assets/images/ic_card.svg'),
                          ),
                          const SizedBox(width: 16.0),
                          Text(
                            widget.exercise.countOfExercises,
                            style: const TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getExercises(List<String> strings) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: strings
            .map((item) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '${(strings.indexOf(item) + 1)}.',
                      style: BrandText.textDayDesc,
                    ),
                    const SizedBox(width: 4.0),
                    Expanded(
                      child: Text(
                        item,
                        style: BrandText.textDayDesc,
                      ),
                    ),
                  ],
                ))
            .toList());
  }
}
