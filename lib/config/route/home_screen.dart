import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/constant/strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectIndex= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Custom BottomNavigationBar"),
        ),
        body: Center(
          child: Text(Strings().welcome),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     Navigator.pushNamed(context, customScrollViewScreen);
        //   },
        //   child: Text("Scroll"),
        // ),
        bottomNavigationBar: _bottomNavBar());
  }
  Widget _bottomNavBar() {
    return Container(
      height: 53,
      decoration: BoxDecoration(
          color: Colors.white, boxShadow: [BoxShadow(color: Colors.grey)]),
      child: Row(
        children: [
          _itemBottomNav(Icons.home,0),
          _itemBottomNav(Icons.favorite,1),
          _itemBottomNav(Icons.search,2),
          _itemBottomNav(Icons.person,3),
        ],
      ),
    );
  }

  Widget _itemBottomNav(IconData icon,int index) {
    return Expanded(
      child: InkWell(
        onTap: (){
          setState(() {
            _selectIndex = index;
          });
        },
        child: Container(
          height: 45,
          decoration:_selectIndex == index ? BoxDecoration(
            color: Colors.white,//Color.fromARGB(255, 220, 220, 220),
            shape: BoxShape.circle,
            boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 1,spreadRadius: .1)]
          ): BoxDecoration(),
          child: Icon(
            icon,
            color:_selectIndex == index ? Colors.blueGrey.shade600: Colors.grey,
            size: _selectIndex == index ? 25 : 18,
          ),
        ),
      ),
    );
  }
}


