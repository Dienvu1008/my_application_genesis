import 'package:flutter/material.dart';

// NavigationRail shows if the screen width is greater or equal to
// narrowScreenWidthThreshold; otherwise, NavigationBar is used for navigation.
const double narrowScreenWidthThreshold = 450;

const double mediumWidthBreakpoint = 1000;
const double largeWidthBreakpoint = 1500;

const double transitionLength = 500;

// Whether the user has chosen a theme color via a direct [ColorSeed] selection,
// or an image [ColorImageProvider].
enum ColorSelectionMethod {
  colorSeed,
  image,
}

enum ColorImageProvider {
  leaves('Leaves',
      'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_1.png'),
  peonies('Peonies',
      'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_2.png'),
  bubbles('Bubbles',
      'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_3.png'),
  seaweed('Seaweed',
      'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_4.png'),
  seagrapes('Sea Grapes',
      'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_5.png'),
  petals('Petals',
      'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_6.png');

  const ColorImageProvider(this.label, this.url);
  final String label;
  final String url;
}

enum ColorSeed {
  baseColor('M3 Baseline', Color(0xff6750a4)),
  purple("Purple", Colors.purple),
  deeppurple("Deep Purple", Colors.deepPurple),
  indigo('Indigo', Colors.indigo),
  lightblue("Light Blue", Colors.lightBlue),
  blue('Blue', Colors.blue),
  cyan("Cyan", Colors.cyan),
  teal('Teal', Colors.teal),
  lightgreen("Light Green", Colors.lightGreen),
  green('Green', Colors.green),
  lime("Lime", Colors.lime),
  amber("Amber", Colors.amber),
  yellow('Yellow', Colors.yellow),
  orange('Orange', Colors.orange),
  deepOrange('Deep Orange', Colors.deepOrange),
  pink('Pink', Colors.pink),
  red("Red", Colors.red),
  grey("Grey", Colors.grey),
  blueGrey("Blue Grey", Colors.blueGrey),
  brown("Brown", Colors.brown),
  black("Black", Colors.black),
  white("White", Colors.white);
  const ColorSeed(this.label, this.color);
  final String label;
  final Color color;
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

enum ScreenSelected {
  demoScreen1(0),
  settingsScreen(1),
  aboutUsScreen(2),
  materialDesignScreen(3),
  demoScreen2(4),
  //focusTimerScreen(5),
  //contactsScreen(6),
  //statsScreen(7),
  //notesScreen(8),
  ;

  const ScreenSelected(this.value);
  final int value;
}

enum PageOfDemoScreen1 {
  page_1_1(0),
  page_1_2(1),
  page_1_3(2),
  ;
  const PageOfDemoScreen1(this.value);
  final int value;
}

enum PageOfDemoScreen2 {
  dayPage(0),
  weekPage(1),
  monthPage(2),
  yearPage(3),
  ;
  const PageOfDemoScreen2(this.value);
  final int value;
}

enum PageOfMaterialDesignScreenSelected {
  component(0),
  color(1),
  typography(2),
  elevation(3),
  ;

  const PageOfMaterialDesignScreenSelected(this.value);
  final int value;
}



enum AppLanguage {
  czech('Czech', 'CS'),
  german('German', 'DE'),
  english('English', 'EN'),
  spanish('Spanish', 'ES'),
  french('French', 'FR'),
  italian('Italian', 'IT'),
  japanese('Japanese', 'JA'),
  korean('Korean', 'KO'),
  norwegian('Norwegian', 'NO'),
  russian('Russian', 'RU'),
  swedish('Swedish', 'SV'),
  vietnamese('Vietnamese', 'VI'),
  chinese('Chinese', 'ZH');

  const AppLanguage(this.language, this.short_language);
  final String language;
  final String short_language;
}

Uri githubUrl = Uri.parse('https://github.com/Dienvu1008');
Uri appGithubUrl = Uri.parse('github://github.com/Dienvu1008');
Uri authorFacebookUrl =
    Uri.parse("https://www.facebook.com/profile.php?id=100074416023246");
Uri appAuthorFacebookUrl =
    Uri.parse("fb://www.facebook.com/profile.php?id=100074416023246");
Uri pageFacebookUrl =
    Uri.parse("https://www.facebook.com/profile.php?id=100083919462769");
Uri appPageFacebookUrl =
    Uri.parse("fb://www.facebook.com/profile.php?id=100083919462769");
Uri emailUrl = Uri.parse(
    "mailto:<dienvu1008@gmail.com>?subject=MyTimeManager%20Query&body=Hi");
Uri readMeUrl = Uri.parse(
    "https://github.com/Dienvu1008/My-Time-Manager-Infor/blob/master/README.md");
Uri appReadMeUrl = Uri.parse(
    "github://github.com/Dienvu1008/My-Time-Manager-Infor/blob/master/README.md");
Uri readMeDeUrl = Uri.parse(
    "https://github.com/Dienvu1008/My-Time-Manager-Infor/blob/master/README-de.md");
Uri appReadMeDeUrl = Uri.parse(
    "github://github.com/Dienvu1008/My-Time-Manager-Infor/blob/master/README-de.md");
Uri readMeViUrl = Uri.parse(
    "https://github.com/Dienvu1008/My-Time-Manager-Infor/blob/master/README-vi.md");
Uri appReadMeViUrl = Uri.parse(
    "github://github.com/Dienvu1008/My-Time-Manager-Infor/blob/master/README-vi.md");
Uri privacyUrl = Uri.parse(
    "https://github.com/Dienvu1008/My-Time-Manager-Infor/blob/master/PRIVACY.md");
Uri appPrivacyUrl = Uri.parse(
    "github://github.com/Dienvu1008/My-Time-Manager-Infor/blob/master/PRIVACY.md");
Uri issueUrl =
    Uri.parse("https://github.com/Dienvu1008/My-Time-Manager-Infor/issues");
Uri appIssueUrl =
    Uri.parse("github://github.com/Dienvu1008/My-Time-Manager-Infor/issues");
Uri proVersionUrl =
    Uri.parse("market://details?id=com.dienvu.mytimemanager.pro");
Uri freeVersionUrl =
    Uri.parse("market://details?id=com.dienvu.mytimemanager.free");
Uri supportUsEnUrl = Uri.parse(
    "https://github.com/Dienvu1008/My-Time-Manager-Infor/blob/master/SUPPORT-US-en.md");
Uri supportUsDeUrl = Uri.parse(
    "https://github.com/Dienvu1008/My-Time-Manager-Infor/blob/master/SUPPORT-US-de.md");
Uri supportUsViUrl = Uri.parse(
    "https://github.com/Dienvu1008/My-Time-Manager-Infor/blob/master/SUPPORT-US-vi.md");
Uri paypalUrl = Uri.parse("https://www.paypal.com/paypalme/dienvu1008");
Uri appPaypalUrl = Uri.parse("paypal://www.paypal.com/paypalme/dienvu1008");
