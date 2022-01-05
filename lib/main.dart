import 'package:flutter/material.dart';
import 'package:vinvestor/src/dashboard/screens/dashboard.dart';
import 'package:vinvestor/vui/temp/src/login/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      /*theme: ThemeData(
        primarySwatch: Colors.red,
      ),*/

      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: const TextTheme(
          /*headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),*/
          bodyText2: TextStyle(fontSize: 18.0),
          caption: TextStyle(fontSize: 18.0),
          subtitle1: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        /*primaryColor: const Color(0xff171734),
        scaffoldBackgroundColor: const Color(0xff171734),
        appBarTheme: AppBarTheme(
          centerTitle: false,
          elevation:0,
          iconTheme: new IconThemeData(color: Color(0xff171734)),
          color: const Color(0xff171734),
          titleTextStyle: const TextStyle(
              color:Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold
          ),
        ),
        fontFamily: 'TestFoundersGrotesk',

        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Color(0xffA1A1A1)),
          fillColor: Color(0xffA1A1A1),
          focusColor: Color(0xffA1A1A1),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
          ),
          border: OutlineInputBorder(),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xff171734),
        ),
        primaryIconTheme: const IconThemeData.fallback().copyWith(
            color: Theme.of(context).primaryColor
        ),
        backgroundColor: Theme.of(context).primaryColor,
        bottomAppBarColor: Theme.of(context).primaryColor,
        primaryTextTheme: TextTheme(
          headline6: TextStyle(
              color: Theme.of(context).primaryColor
          ),
        ),*/
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            minimumSize: Size(88, 56),
            padding: EdgeInsets.symmetric(horizontal: 16),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
        ),
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
        /*bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xff171734),
          unselectedItemColor:Color(0xff6A6A7D),
          selectedItemColor:Color(0xffFFB802),
          selectedLabelStyle: TextStyle(
              color: Color(0xffFFB802), fontSize: 18.0),
          unselectedLabelStyle: TextStyle(
              color: Color(0xff6A6A7D), fontSize: 18.0),
          elevation: 0,
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Color(0xff171734),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                topRight: Radius.circular(5.0)),
          ),
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.white,
            minimumSize: const Size(18, 10),
            textStyle: const TextStyle(
              fontSize: 18,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Theme.of(context).primaryColor),*/
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/' : (context) => const Login(),
        Dashboard.routeName : (context) => const Dashboard(),
      },
    );
  }
}

