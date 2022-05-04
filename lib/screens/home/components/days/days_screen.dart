import 'package:flutter/material.dart';
import 'package:ftrainer/style/brand_color.dart';
import 'package:ftrainer/widgets/background.dart';
import 'detail_body.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DaysScreen extends StatelessWidget {
  static const String id = 'days_screen';
  const DaysScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: BrandColor.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(AppLocalizations.of(context)!.cardHomeTitle),
      ),
      body: Stack(
        children: [
          Background(context: context),
          const SingleChildScrollView(child: DetailBody())
        ],
      ),
    );
  }
}
