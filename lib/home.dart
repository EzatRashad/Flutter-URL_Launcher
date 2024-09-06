import 'package:depi_task3/btn.dart';
import 'package:flutter/material.dart';


import 'luncher_utils.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BTN(
                txt: "Call",
                onPress: () async {
                  LuncherUtils.call("01556645516");
                },
              ),
              BTN(
                txt: "SMS",
                onPress: () {
                  LuncherUtils.sms("01556645516");
                },
              ),
              BTN(
                txt: "Email",
                onPress: () async {
                  LuncherUtils.mail("test@gmail.com");
                },
              ),
              BTN(
                txt: "Browse",
                onPress: () async {
                  LuncherUtils.browse("https://www.google.com");
                },
              ),
              BTN(
                txt: "Map",
                onPress: () async {
                  LuncherUtils.map(13.5, 10.6);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
