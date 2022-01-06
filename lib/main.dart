import 'package:flutter/material.dart';
import 'package:vinvestor/src/dashboard/screens/dashboard.dart';
import 'package:vinvestor/src/live_facilities/screens/live_facilities.dart';
import 'package:vinvestor/vui/app_theme/themedata.dart';
import 'package:vinvestor/vui/temp/src/login/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Investor',
      theme: AppThemeData.appThemeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/' : (context) => const Login(),
        Dashboard.routeName : (context) => const Dashboard(),
        LiveFacilities.routeName : (context) => const LiveFacilities(),
      },
    );
  }
}

