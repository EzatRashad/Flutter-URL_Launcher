import 'package:url_launcher/url_launcher.dart';

class LuncherUtils{
  static call(phone) async {
    final Uri call = Uri.parse("tel:$phone");

    try {
      if (await launchUrl(call)) {}
    } catch (e) {
      print(e.toString());
    }
  }

  static sms(phone) async {
    final Uri call = Uri.parse("sms:$phone");

    try {
      if (await launchUrl(call)) {}
    } catch (e) {
      print(e.toString());
    }
  }

  static map(double lat, double lon) async {
    final Uri call = Uri.parse('geo:$lat,$lon');

    try {
      if (await launchUrl(call)) {}
    } catch (e) {
      print(e.toString());
    }
  }

  static mail(String email) async {
/*
    final String email = Uri.encodeComponent("test@gmail.com");
    final String subject = Uri.encodeComp onent("Mail subject");
    final String body = Uri.encodeComponent("Mail body");
    final Uri mail = Uri.parse("mailto:$email?subject=$subject&body=$body");*/

    final Uri call = Uri.parse("mailto:$email");

    try {
      if (await launchUrl(call)) {}
    } catch (e) {
      print(e.toString());
    }
  }

  static browse(String url) async {
    final Uri call = Uri.parse(url);

    try {
      if (await launchUrl(call)) {}
    } catch (e) {
      print(e.toString());
    }
  }
}