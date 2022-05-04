import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ftrainer/db/db_service.dart';
import 'package:ftrainer/db/sql_result_model.dart';
import 'package:ftrainer/l10n/l10n.dart';
import 'package:ftrainer/style/brand_color.dart';
import 'package:ftrainer/style/brand_text.dart';
import 'package:ftrainer/widgets/background.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ResultTab extends StatefulWidget {
  const ResultTab({Key? key}) : super(key: key);

  @override
  State<ResultTab> createState() => _ResultTabState();
}

class _ResultTabState extends State<ResultTab> {
  late DBService dbService;
  List<LinearGradient> gradients = [
    BrandColor.gradient1,
    BrandColor.gradient2,
    BrandColor.gradient3,
    BrandColor.gradient4,
    BrandColor.gradient5,
    BrandColor.gradient6,
  ];

  @override
  void initState() {
    dbService = DBService();
    super.initState();
  }

  bool checkDateTime(int d1, int d2) {
    bool _isDifference = false;
    final date1 = DateTime.fromMillisecondsSinceEpoch(d1);
    final date2 = DateTime.fromMillisecondsSinceEpoch(d2);
    final difference = date2.difference(date1).inDays;
    print(difference);
    _isDifference = difference > 0 ? true : false;
    print(_isDifference);
    return _isDifference;
  }
//result decode like json
  // Map<String, dynamic> data = jsonDecode(jsonString);

  // print(data.keys);
  // for (var i in data.values){
  //   print(i);
  // }

  List<String> cleanResult(String text) {
    String t1 = text.replaceAll('[', '');
    String t2 = t1.replaceAll(']', '');
    List<String> list = t2.split(',');
    return list;
  }

  String getTotal(List<String> line) {
    int total = 0;
    for (int i = 0; i < line.length; i++) {
      total += int.parse(line[i]);
    }

    return '${line.length}/$total';
  }

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final listEx = L10n.getNameById(locale.languageCode);
    return Stack(
      children: [
        Background(context: context),
        FutureBuilder(
            future: dbService.getResults(),
            builder: (BuildContext context,
                AsyncSnapshot<List<SQLResultModel>> exercises) {
              if (exercises.hasData) {
                return SafeArea(
                  child: Column(
                    children: [
                      const SizedBox(height: 12.0),
                      Text(
                        AppLocalizations.of(context)!.resultTab,
                        style: BrandText.dayTextTitleActive,
                      ),
                      const SizedBox(height: 12.0),
                      Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: exercises.data!.length,
                            itemBuilder: (BuildContext context, int index) {
                              int exID = exercises.data![index].exerciseId;
                              List<String> resList =
                                  cleanResult(exercises.data![index].result);
                              return Container(
                                margin:
                                    const EdgeInsets.fromLTRB(4.0, 8.0, 4.0, 0),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          height: 200.0,
                                          padding: const EdgeInsets.all(12.0),
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            gradient: gradients[Random()
                                                .nextInt(gradients.length)],
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(18.0),
                                              topRight: Radius.circular(18.0),
                                              bottomLeft: Radius.circular(18.0),
                                            ),
                                            // boxShadow: [
                                            //   BoxShadow(
                                            //     color:
                                            //         Colors.grey.withOpacity(0.25),
                                            //     spreadRadius: 5,
                                            //     blurRadius: 7,
                                            //     offset: const Offset(0,
                                            //         3), // changes position of shadow
                                            //   ),
                                            // ],
                                          ),
                                        ),
                                        Positioned(
                                          top: 45.0,
                                          right: -150.0,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.12),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        180.0)),
                                            height: 360.0,
                                            width: 360.0,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0, vertical: 10.0),
                                          child: Column(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        DateFormat('yyyy-MM-dd')
                                                            .format(DateTime
                                                                .fromMillisecondsSinceEpoch(
                                                                    exercises
                                                                        .data![
                                                                            index]
                                                                        .createAt))
                                                            .toString(),
                                                        style: BrandText
                                                            .textDayWhite,
                                                      ),
                                                      Text(
                                                        getTotal(resList),
                                                        style: BrandText
                                                            .textDayTitle,
                                                      ),
                                                    ],
                                                  ),
                                                  // Text(
                                                  //     'EXERCISE ID: ${exercises.data![index].exerciseId}'),
                                                  // Text(
                                                  //     'ID: ${exercises.data![index].id}'),
                                                  // Text(
                                                  //     'COUNT: ${exercises.data![index].result}'),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        AppLocalizations.of(
                                                                context)!
                                                            .exerciseName,
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white70,
                                                            fontSize: 12.0),
                                                      ),
                                                      Text(
                                                        listEx[exID],
                                                        style: BrandText
                                                            .exDetailTitle,
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 16.0),
                                                  Container(
                                                    height: 1.0,
                                                    width: double.infinity,
                                                    color: Colors.white24,
                                                  ),
                                                  const SizedBox(height: 8.0),
                                                  SizedBox(
                                                    height: 80.0,
                                                    child: ListView(
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        children: resList
                                                            .asMap()
                                                            .entries
                                                            .map((e) {
                                                          int i = e.key;
                                                          String val = e.value;
                                                          return Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    right:
                                                                        28.0),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                  (i + 1)
                                                                      .toString(),
                                                                  style: BrandText
                                                                      .exDetailTitle,
                                                                ),
                                                                Text(
                                                                  val,
                                                                  style: BrandText
                                                                      .dayTextNumberActive,
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }).toList()),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 8.0),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    checkDateTime(
                                      exercises.data![index].createAt,
                                      index == exercises.data!.length - 1
                                          ? exercises.data![index].createAt
                                          : exercises.data![index + 1].createAt,
                                    )
                                        ? Padding(
                                            padding: const EdgeInsets.only(
                                                top: 16.0),
                                            child: Text(
                                              DateFormat('dd/MM/yyyy').format(
                                                  DateTime
                                                      .fromMillisecondsSinceEpoch(
                                                          exercises
                                                              .data![index + 1]
                                                              .createAt)),
                                              style: const TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        : const SizedBox(),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                );
              }
              return const CircularProgressIndicator();
            }),
      ],
    );
  }
}
