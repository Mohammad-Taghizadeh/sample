import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/widget/home/btmNavBar/custom_btm_nav_bar.dart';
import 'package:sample/widget/home/header_home.dart';
import 'package:sample/widget/home/main/main_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [HeaderHome(), MainHome()],
              ),
              Positioned(
                top: Get.height / 3.5,
                left: 10,
                right: 10,
                child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      height: Get.height / 4,
                      viewportFraction: 1,
                      enlargeCenterPage: true,
                    ),
                    items: [
                     _boxImage("assets/images/vector4.png"),
                      _boxImage("assets/images/vector3.png"),
                      _boxImage("assets/images/vector2.png"),
                      _boxImage("assets/images/vector1.png"),
                      _boxImage("assets/images/vector6.png"),
                    ]),
              )
            ],
          ),
        ),
        bottomNavigationBar: CustomBtmNavBar());
  }

  Widget _boxImage(String asset){
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          image: DecorationImage(
            image: AssetImage(asset),
            fit: BoxFit.cover,
          )),
    );
  }
}
