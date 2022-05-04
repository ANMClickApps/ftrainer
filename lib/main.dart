import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ftrainer/screens/home/components/days/days_screen.dart';
import 'package:ftrainer/screens/home/home_tab.dart';
import 'package:provider/provider.dart';
import 'helper/locate_provider.dart';
import 'l10n/l10n.dart';
import 'screens/root_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => LocaleProvider(),
      builder: (context, child) {
        final provider = Provider.of<LocaleProvider>(context);

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'FTrainer',
          locale: provider.locale,
          supportedLocales: L10n.all,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: const RootScreen(),
          routes: {
            RootScreen.id: (context) => const RootScreen(),
            HomeTab.id: (context) => const HomeTab(),
            DaysScreen.id: (context) => const DaysScreen(),
          },
        );
      });
}
