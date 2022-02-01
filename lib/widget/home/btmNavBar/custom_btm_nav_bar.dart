import 'package:flutter/material.dart';
import 'package:sample/constant/colors.dart';

class CustomBtmNavBar extends StatefulWidget {
  const CustomBtmNavBar({Key? key}) : super(key: key);

  @override
  _CustomBtmNavBarState createState() => _CustomBtmNavBarState();
}

class _CustomBtmNavBarState extends State<CustomBtmNavBar> {
  int _selectIndex= 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      decoration: BoxDecoration(
          color: Colors.white, boxShadow: [BoxShadow(color: Colors.grey)]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
    return InkWell(
      onTap: (){
        setState(() {
          _selectIndex = index;
        });
      },
      child: Transform.rotate(
        angle:_selectIndex == index ?  .8 : 0,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.linear,
          height: 38,
          width: 38,
          decoration:_selectIndex == index ? BoxDecoration(
              color: Theme.of(context).primaryColor,//Color.fromARGB(255, 220, 220, 220),
            gradient: LinearGradient(
              colors: [
                CColors.primaryColor,
                CColors.primaryColorDark
              ],
            ),
              borderRadius: BorderRadius.only(topRight: Radius.circular(6),bottomLeft: Radius.circular(6)),
          ): BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(8),),
          child: Transform.rotate(
            angle: _selectIndex == index ?  -.8 : 0,
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 300),
              opacity: _selectIndex == index ? 1 : .7,
              child: Icon(
                icon,
                color:_selectIndex == index ? Colors.white : Colors.blueGrey.shade300,
                size: _selectIndex == index ? 25 : 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


