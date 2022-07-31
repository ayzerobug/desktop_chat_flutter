import 'package:desktop_chat_ui/app.dart';
import 'package:desktop_chat_ui/resources/colors.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Desktop Chat UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(
          color: appBarColor,
        ),
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: "Satoshi",
              bodyColor: Colors.white,
            ),
      ),
      home: const AppWidget(),
    );
  }
}
