import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    Key? key,
    required this.url,
    required this.title,
    required this.subTitle,
    required this.iconPath,
  }) : super(key: key);
  final String url;
  final String title;
  final String subTitle;
  final String iconPath;

  void _launchUrl() async {
    if (!await launchUrl(Uri.parse(url))) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: GestureDetector(
        onTap: _launchUrl,
        child: Row(
          children: [
            SizedBox(
                height: 24.0, width: 24.0, child: SvgPicture.asset(iconPath)),
            const SizedBox(width: 18.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 22.0),
                ),
                Text(
                  subTitle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
