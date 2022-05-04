import 'package:flutter/material.dart';
import '../../widgets/social_media.dart';
import 'componnets/languages_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('General'),
            SizedBox(
              height: 70.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.language),
                      const SizedBox(width: 20.0),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.langSettingTitle,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 22.0),
                            ),
                            Text(
                              AppLocalizations.of(context)!.langSettingSubTitle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  LanguagePickerWidget()
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            const Text('Social Media'),
            const SocialMedia(
              iconPath: 'assets/icons/youtube-brands.svg',
              title: 'ANM click Apps',
              subTitle: 'My YouTube channel about Flutter',
              url: 'https://www.youtube.com/channel/UCaaOsQPEj6LWWiE3qt0qBlA',
            ),
            const SocialMedia(
              iconPath: 'assets/icons/github-brands.svg',
              title: 'ANMClickApps',
              subTitle: 'github.com/ANMClickApps',
              url: 'https://github.com/ANMClickApps',
            ),
            const SocialMedia(
              iconPath: 'assets/icons/instagram-brands.svg',
              title: 'anmclick.apps',
              subTitle: 'instagram.com/anmclick.apps',
              url: 'https://www.instagram.com/anmclick.apps/',
            ),
            const SocialMedia(
              iconPath: 'assets/icons/figma-brands.svg',
              title: 'figma.com/@anmclickapp',
              subTitle: 'Ftrainer by Alex Cross',
              url: 'https://www.figma.com/@anmclickapp',
            ),
          ],
        ),
      ),
    );
  }
}
