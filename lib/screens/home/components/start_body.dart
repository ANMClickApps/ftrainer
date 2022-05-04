import 'package:flutter/material.dart';
import 'package:ftrainer/db/db_service.dart';
import 'package:ftrainer/db/sql_result_model.dart';
import 'package:ftrainer/l10n/l10n.dart';
import 'package:ftrainer/model/card_exercises.dart';
import 'package:ftrainer/style/brand_color.dart';
import 'package:ftrainer/style/brand_text.dart';
import 'package:ftrainer/text_const.dart';
import 'package:ftrainer/widgets/count_button.dart';
import 'package:ftrainer/widgets/custom_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StartBody extends StatefulWidget {
  const StartBody({Key? key, required this.ex, required this.callback})
      : super(key: key);
  final Exercise ex;
  final Function(List<int>) callback;

  @override
  State<StartBody> createState() => _StartBodyState();
}

class _StartBodyState extends State<StartBody> {
  int count = 0;
  List<int> result = [];
  late DBService dbService;
  late int exerciseId;

  @override
  void initState() {
    dbService = DBService();

    super.initState();
  }

  void setCount(bool state) {
    if (state == true) {
      setState(() {
        count += 1;
      });
    } else {
      if (count != 0) {
        setState(() {
          count -= 1;
        });
      }
    }
  }

  void showSnackBar(String title, [bool isSuccess = false]) {
    final snackBar = SnackBar(
      content: Text(
        title,
        style:
            TextStyle(color: isSuccess ? Colors.green[300] : Colors.red[300]),
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _saveResult() {
    if (result.isNotEmpty) {
      dbService
          .addResult(SQLResultModel(
              createAt: DateTime.now().millisecondsSinceEpoch,
              //result: resultData(),
              result: result.toString(),
              exerciseId: exerciseId))
          .then((value) {
        print('SAVE: $value');
        if (value) {
          showSnackBar(textSuccessUKR, true);
        } else {
          showSnackBar(textFalseUKR);
        }
      });
    } else {
      showSnackBar(textAddEmptyUKR);
    }
  }

  // String resultData() {
  //   //return data like valid json
  //   String line = '';
  //   for (var e in result) {
  //     String com = e == result.last ? '' : ',';
  //     line += '"${result.indexOf(e)}":"$e"$com';
  //   }
  //   return '{$line}';
  // }

  void _addResult() {
    setState(() {
      result.add(count);
    });
    widget.callback(result);
  }

  void removeResult(int i) {
    if (result.isNotEmpty) {
      setState(() {
        result.removeAt(i);
      });
      widget.callback(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final listEx = L10n.getNameById(locale.languageCode);
    exerciseId = listEx.indexOf(widget.ex.title);
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppLocalizations.of(context)!.setsStart,
                        style: BrandText.exCardDay),
                    const SizedBox(height: 6.0),
                    Text(AppLocalizations.of(context)!.repetitionsStart,
                        style: BrandText.exCardDay),
                  ],
                ),
                const SizedBox(width: 14.0),
                SizedBox(
                  height: 70.0,
                  width: MediaQuery.of(context).size.width * 0.55,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: result.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            InkWell(
                              customBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              onLongPress: () => removeResult(index),
                              child: Container(
                                height: 70.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18.0),
                                    border: Border.all(
                                        color: const Color(0xffDBE1FF),
                                        width: 2.0)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${index + 1}',
                                      style: BrandText.resultTable,
                                    ),
                                    Text(
                                      result[index].toString(),
                                      style: BrandText.resultTable,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 6.0),
                          ],
                        );
                      }),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.countOfrepetitions,
                      style: BrandText.tabStart,
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CountButton(
                          title: '-',
                          onPressed: () => setCount(false),
                        ),
                        const SizedBox(width: 40.0),
                        Text(
                          count.toString(),
                          style: const TextStyle(
                              fontSize: 48.0,
                              fontWeight: FontWeight.w500,
                              color: BrandColor.primary3),
                        ),
                        const SizedBox(width: 40.0),
                        CountButton(
                          isPlus: true,
                          title: '+',
                          onPressed: () => setCount(true),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        OutlinedButton(
                            style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all(
                                    const Size(100.0, 44.0)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                )),
                                side: MaterialStateProperty.all(
                                  const BorderSide(
                                    color: BrandColor.primary3,
                                  ),
                                )),
                            onPressed: _addResult,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 45.0),
                              child: Text(
                                AppLocalizations.of(context)!.addButton,
                                style: const TextStyle(
                                    color: BrandColor.primary3,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                              ),
                            )),
                        // CustomButton(
                        //   title: 'Добавить',
                        //   onPressed: _addResult,
                        //   width: MediaQuery.of(context).size.width * 0.42,
                        // ),
                        const SizedBox(width: 8.0),
                        CustomButton(
                          title: AppLocalizations.of(context)!.doneButton,
                          onPressed: _saveResult,
                          width: MediaQuery.of(context).size.width * 0.35,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
