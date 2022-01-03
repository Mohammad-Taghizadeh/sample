import 'package:flutter/material.dart';
import 'package:sample/config/route/custom_scroll_view_screen.dart';
import 'package:sample/config/route/home_screen.dart';
import 'package:sample/constant/string_routes.dart';

void main() => runApp(SampleApp());


class SampleApp extends StatelessWidget {
  const SampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context)=> HomeScreen(),
        customScrollViewScreen : (context)=> CustomScrollViewScreen(),
      },
    );
  }
}
