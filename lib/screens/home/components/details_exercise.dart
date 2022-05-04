import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ftrainer/model/card_exercises.dart';
import 'package:ftrainer/screens/home/components/recomend_body.dart';
import 'package:ftrainer/screens/home/components/start_body.dart';
import 'package:ftrainer/screens/root_screen.dart';
import 'package:ftrainer/style/brand_color.dart';
import 'package:ftrainer/style/brand_text.dart';
import 'package:ftrainer/widgets/background.dart';
import 'package:ftrainer/widgets/custom_tab.dart';
import 'package:ftrainer/widgets/row_dodts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DetailsExercise extends StatefulWidget {
  const DetailsExercise({Key? key, required this.exercise}) : super(key: key);

  final Exercise exercise;

  @override
  State<DetailsExercise> createState() => _DetailsExerciseState();
}

class _DetailsExerciseState extends State<DetailsExercise> {
  late Exercise _ex;
  List<String> images = [];
  PageController controller = PageController();
  var currentPageValue = 0.0;
  int currentTab = 0;
  List<Widget> bodys = [];
  List<int> resultList = [];

  @override
  void initState() {
    _ex = widget.exercise;
    bodys.add(RecomendBody(ex: _ex));
    bodys.add(StartBody(
      ex: _ex,
      callback: callback,
    ));
    images.addAll(widget.exercise.images);
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page!;
      });
    });
    super.initState();
  }

  callback(newResultList) {
    setState(() {
      resultList = newResultList;
    });
  }

  int sumResult(List<int> list) {
    int result = 0;
    for (var i in list) {
      result += i;
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: BrandColor.background,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.exercise),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: [
          IconButton(
              icon: const Icon(Icons.home),
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, RootScreen.id, (route) => false)),
          const SizedBox(width: 18.0)
        ],
      ),
      body: Stack(
        children: [
          Background(context: context),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTitle(),
                Expanded(
                  flex: 1,
                  child: PageView.builder(
                      controller: controller,
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (BuildContext context, int index) {
                        return FractionallySizedBox(
                            widthFactor: 0.9,
                            child: SvgPicture.asset(images[index]));
                      }),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      RowDodts(lists: images, currentIndex: currentPageValue),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                    width: 2.0, color: BrandColor.primary3),
                                color: currentTab == 0
                                    ? BrandColor.tabActive
                                    : Colors.white),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(30),
                                onTap: () {
                                  setState(() {
                                    currentTab = 0;
                                  });
                                },
                                child: CustomTab(
                                  isActive: currentTab == 0,
                                  title: AppLocalizations.of(context)!
                                      .recommendations,
                                  imagePath: 'assets/images/ic_like.svg',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                    width: 2.0, color: BrandColor.primary3),
                                color: currentTab == 1
                                    ? BrandColor.tabActive
                                    : Colors.white),
                            child: Material(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(30.0),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(30),
                                onTap: () {
                                  setState(() {
                                    currentTab = 1;
                                  });
                                },
                                child: CustomTab(
                                  isActive: currentTab == 1,
                                  title: AppLocalizations.of(context)!.start,
                                  imagePath: 'assets/images/ic_start.svg',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24.0),
                      Expanded(child: bodys[currentTab]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _ex.title,
                  style: BrandText.exDetailTitle,
                ),
                Text(
                  AppLocalizations.of(context)!.sets,
                  style: const TextStyle(color: Colors.white54, fontSize: 14.0),
                )
              ],
            ),
          ),
          Text(
            '${resultList.length}/${sumResult(resultList)}',
            style: const TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
