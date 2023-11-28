import 'package:flutter/material.dart';
import 'package:my_application_genesis/app/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

launchURL(Uri url) async {
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

void showComingSoonDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(AppLocalizations.of(context)!.comingSoon),
        content: Text(AppLocalizations.of(context)!.featureAvailableSoon),
        actions: [
          TextButton(
            child: Text(AppLocalizations.of(context)!.ok),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

Color contrastColor(Color color) {
  final brightness = ThemeData.estimateBrightnessForColor(color);
  switch (brightness) {
    case Brightness.dark:
      return Colors.white;
    case Brightness.light:
      return Colors.black;
  }
}
