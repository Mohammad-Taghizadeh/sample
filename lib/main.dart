import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sample/constant/colors.dart';
import 'package:sample/constant/themes.dart';
import 'package:sample/screens/custom_scroll_view_screen.dart';
import 'package:sample/screens/home_screen.dart';
import 'package:sample/constant/string_routes.dart';

void main() => runApp(SampleApp());


class SampleApp extends StatelessWidget {
  const SampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.zoom,
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: "/", page: ()=> HomeScreen()),
        GetPage(name: customScrollViewRoot, page: ()=> CustomScrollViewScreen()),
      ],
      theme: CThemes.light,
      darkTheme: CThemes.dark,
    );
  }
}
