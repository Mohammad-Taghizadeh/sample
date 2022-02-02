import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController{
  bool _isDarkTheme = false;

  get isDarkTheme => _isDarkTheme;


  changeTheme(){
    _isDarkTheme = !_isDarkTheme;
    if(_isDarkTheme){
      Get.changeThemeMode(ThemeMode.dark);
    } else{
      Get.changeThemeMode(ThemeMode.light);
    }
    update();
  }
}