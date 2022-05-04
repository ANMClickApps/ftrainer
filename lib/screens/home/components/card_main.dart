import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ftrainer/screens/home/components/days/days_screen.dart';
import 'dart:math' as math;
import '../../../style/brand_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CardMain extends StatefulWidget {
  const CardMain({
    Key? key,
  }) : super(key: key);

  @override
  State<CardMain> createState() => _CardMainState();
}

class _CardMainState extends State<CardMain> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));

    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
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
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff353535).withOpacity(0.4),
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
                onTap: () => Navigator.pushNamed(context, DaysScreen.id),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.of(context)!
                                  .cardHomeCat
                                  .toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w500,
                                  height: 1.3,
                                  color: Color(0xffD8B9FF)),
                            ),
                            SizedBox(
                              height: 60.0,
                              width: 70.0,
                              child: SvgPicture.asset(
                                'assets/images/ex_1_1.svg',
                                fit: BoxFit.fitHeight,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 25.0),
                      Text(
                        AppLocalizations.of(context)!.cardHomeTitle,
                        style: const TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      Text(
                        AppLocalizations.of(context)!.cardHomeSubTitle,
                        style: const TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffD8B9FF),
                        ),
                      ),
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
                            AppLocalizations.of(context)!.cardHomeCount,
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
}
