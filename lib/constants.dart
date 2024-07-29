// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';


Color blue = const Color(0xFF212d45);Color green = const Color(0xFF00B193);
Color yellow2 = const Color(0xFFf9c03f);
Color yellow = const Color(0xfffdcd20);
Color headerColor = const Color(0xffffffff);
Color darkBlue = const Color(0xff212d45);
Color babyBlue = const Color(0xfff4f7ff);
var textStyleActions =  TextStyle(
    color: darkBlue,
    fontSize:30,
    fontWeight: FontWeight.bold,
    fontFamily: 'NotoKufiArabic'
);
class HomeButton extends StatelessWidget {
  String text;
  Color textColor; Color backgroudColor;
  Function onTap;
  HomeButton({super.key, required this.textColor,required this.backgroudColor,required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: 170,
      height: 35,
      margin: Intl.getCurrentLocale() == 'ar'
          ? const EdgeInsets.only(top: 12, bottom: 12, left: 10)
          : const EdgeInsets.only(top: 12, bottom: 12, right: 10),
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(25), color: backgroudColor,border: Border.all(width: 2,color: yellow2)),
      child: GestureDetector(
        onTap: onTap(),
        child: Center(
          child: Text(
            text,
            style:  TextStyle(
                color: textColor,
                fontFamily: 'NotoKufiArabic',
                fontWeight: FontWeight.w100,
                fontSize: 20),
          ),
        ),
      ),
    );
  }
}
Future<void> goToTelegramChannel(
   ) async {
  String url = "https://t.me/+rKT_u_HSv3o2ODQ0";

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
Future<void> goToFacebookPage() async {
  if (await canLaunch("https://www.facebook.com/nebujewellerysystems?mibextid=ZbWKwL")) {
    await launch("https://www.facebook.com/nebujewellerysystems?mibextid=ZbWKwL");
  } else {
    throw 'Could not launch https://www.facebook.com/';
  }
}


Future<void> goToGooglePlayPage() async {
  if (await canLaunch('https://bit.ly/3LDPnPq')) {
    await launch('https://bit.ly/3LDPnPq');
  } else {
    throw 'Could not launch Google Play Store';
  }
}


Future<void> goToAppStorePage() async {
  if (await canLaunch('https://apple.co/3rTKutG')) {
    await launch('https://apple.co/3rTKutG');
  } else {
    throw 'Could not launch App Store';
  }
}

Future<void> goToInstagramPage() async {
  const instagramUrl = 'https://www.instagram.com/nebu.systems?igsh=MjFyYnlwejZoZjlq';
  if (await canLaunch(instagramUrl)) {
    await launch(instagramUrl);
  } else {
    throw 'Could not launch Instagram';
  }

}

Future<void> goToYoutupePage() async {
  const youtubeUrl = 'https://www.youtube.com/@nebuapp8301';

  if (await canLaunch(youtubeUrl)) {
    await launch(youtubeUrl);
  } else {
    throw 'Could not launch YouTube';
  }

}

Future<void> launchWhatsapp() async {
  try {
    String number = "201222200056";
    String message = "اريد معرفة المزيد عن نيبو سيستم";
    String url = 'https://wa.me/$number?text=$message';

    final uri = Uri.encodeFull(url);

    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch whatsapp ';
    }
  } catch (e, s) {
    print(e);
  }
}

Future<void> launchEmail() async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'peteraziz@nebusystems.com',
    query: encodeQueryParameters(<String, String>{
      'subject': 'Example Subject & Symbols are allowed!',
    }),
  );

  if (!await launchUrl(emailLaunchUri)) {
    throw Exception('Could not launch $emailLaunchUri');
  }
}

String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((MapEntry<String, String> e) =>
  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}