import 'package:day2/util/app_color.dart';
import 'package:day2/view/screen/about.dart';
import 'package:day2/view/screen/dog.dart';
import 'package:day2/view/screen/home.dart';
import 'package:flutter/material.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColor.primaryColor,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: Colors.white,
          titleTextStyle:
              const TextStyle(color: AppColor.primaryColor, fontSize: 20),
          iconTheme:
              IconTheme.of(context).copyWith(color: AppColor.primaryColor),
          elevation: 0.2,
        ),
        // textTheme: ,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: AppColor.primaryColor,
                textStyle: const TextStyle(color: AppColor.textColor))),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        "/about": (context) => const About(),
        "/dog": (context) => const Dog(),
      },
    );
  }
}
