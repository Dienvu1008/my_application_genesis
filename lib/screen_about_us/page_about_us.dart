import 'package:flutter/material.dart';
import 'package:my_application_genesis/app/app_localizations.dart';
import 'package:my_application_genesis/constants.dart';
import 'package:my_application_genesis/utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  void showConfirmationDialog(BuildContext context, Uri url) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final localizations = AppLocalizations.of(context);
        return AlertDialog(
          title: Text(localizations!.openLink),
          content:
              Text(localizations.doYouWantToOpenTheLinkInYourDefaultBrowser),
          actions: [
            TextButton(
              child: Text(localizations.cancel),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(localizations.open),
              onPressed: () async {
                launchURL(url);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  // void showOpenSourceDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       final localizations = AppLocalizations.of(context);
  //       return AlertDialog(
  //         title: Text(localizations!.openSourceAnnouncement),
  //         content: Text(localizations.thisAppWillBecomeOpenSourceWeWillMakeTheSourceCodePublicAfterCleaningUpTheCode),
  //         actions: [
  //           TextButton(
  //             child: Text(localizations.ok),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final textTheme = Theme.of(context).textTheme;

    return Expanded(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                      child: Text(localizations!.applicationInformation,
                          style: textTheme.titleLarge),
                    ),
                    ListTile(
                        leading: const Icon(Icons.bug_report_outlined),
                        title: Text(localizations.reportAnIssue,
                            style: textTheme.bodyMedium),
                        subtitle: Text(localizations.havingAnIssueReportItHere,
                            style: textTheme.bodySmall),
                        onTap: () async {
                          if (await canLaunchUrl(appIssueUrl)) {
                            await launchURL(appIssueUrl);
                          } else {
                            await launchURL(issueUrl);
                          }
                        }
                        ),
                    ListTile(
                      leading: const Icon(Icons.update_outlined),
                      title: Text("Version", style: textTheme.bodyMedium),
                      subtitle: Text("1.0.0", style: textTheme.bodySmall),
                      //onTap: () => launchURL(playStoreUrl),
                    ),

                    ListTile(
                      leading: const Icon(Icons.emoji_food_beverage_outlined),
                      title: Text(localizations.supportUs,
                          style: textTheme.bodyMedium),
                      onTap: () async {
                        Uri url;
                        switch (Localizations.localeOf(context).languageCode) {
                          case 'en':
                            url = supportUsEnUrl;
                            break;
                          case 'vi':
                            url = supportUsViUrl;
                            break;
                          case 'de':
                            url = supportUsDeUrl;
                            break;
                          default:
                            url =
                                supportUsEnUrl; // fallback to English URL if the language is not supported
                        }
                        if (await canLaunchUrl(url)) {
                          await launchURL(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    ListTile(
                      leading: const FaIcon(
                        FontAwesomeIcons.github,
                      ),
                      title: Text(localizations.openSource,
                          style: textTheme.bodyMedium),
                      onTap: () => () async {
                          if (await canLaunchUrl(appSourceCodeUrl)) {
                            await launchURL(appSourceCodeUrl);
                          } else {
                            await launchURL(sourceCodeUrl);
                          }
                        },
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                      child: Text(localizations.author,
                          style: textTheme.titleLarge),
                    ),
                    ListTile(
                      leading: const Icon(Icons.corporate_fare_outlined),
                      title: Text(
                        "TGB Soft",
                        style: textTheme.bodyMedium,
                      ),
                      subtitle: Text("The True, The Good, And The Beautiful",
                          style: textTheme.bodySmall),
                      onTap: () async {
                        if (await canLaunchUrl(appPageFacebookUrl)) {
                          await launchURL(appPageFacebookUrl);
                        } else {
                          await launchURL(pageFacebookUrl);
                        }
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.perm_identity_outlined),
                      title: Text("Điền Vũ", style: textTheme.bodyMedium),
                      subtitle: Text("Dienvu1008", style: textTheme.bodySmall),
                      onTap: () async {
                        if (await canLaunchUrl(appGithubUrl)) {
                          await launchURL(appGithubUrl);
                        } else {
                          await launchURL(githubUrl);
                        }
                      },
                    ),
                    ListTile(
                        leading: const Icon(Icons.email_outlined),
                        title: Text(localizations.sendAnEmail,
                            style: textTheme.bodyMedium),
                        subtitle: Text("dienvu1008@gmail.com",
                            style: textTheme.bodySmall),
                        onTap: () => launchURL(emailUrl)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
