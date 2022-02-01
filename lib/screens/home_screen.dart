import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/constant/colors.dart';
import 'package:sample/constant/strings.dart';
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
                children: [
                  HeaderHome(),
                  MainHome()
                ],
              ),
              Positioned(
                top: 200,
                left: 10,
                right: 10,
                child: Container(
                  width: 400,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/vector1.png'),
                      fit: BoxFit.cover
                    ),
                    boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 1,offset: Offset(0, 2))]
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: CustomBtmNavBar());
  }
}
