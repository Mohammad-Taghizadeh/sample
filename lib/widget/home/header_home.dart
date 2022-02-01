import 'package:flutter/material.dart';
import 'package:sample/constant/colors.dart';
import 'package:sample/constant/strings.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: _boxDecoration(),
        child: Column(
          children: [
            _rowTop(),
            SizedBox(height: 30,),
            _rowMain()
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration(){
    return BoxDecoration(
        gradient: LinearGradient(colors: [
          CColors.primaryColor,
          CColors.primaryColorDark
        ]));
  }

 Widget _rowTop(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
       _iconRow(Icons.sort),
        Text(
          Strings.availableBalance,
          style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
        ),
       _iconRow(Icons.wb_sunny),
      ],
    );
  }

  Widget _iconRow(IconData icon){
    return  Icon(
      icon,
      color: Colors.white,
    );
  }

  Widget _rowMain(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Stack(children: [
          _circleImage1(),
          _circleImage2()
        ]),
        Text(Strings.userNameAndAmount,
          style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold,letterSpacing: 1),),
        SizedBox(width: 10,)
      ],
    );
  }

  Widget _circleImage1(){
    return CircleAvatar(
      radius: 55,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: _boxDecorationImage()
      ),
    );
  }

  BoxDecoration _boxDecorationImage(){
    return BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
            color: Colors.white, width: 2),);
  }

  Widget _circleImage2(){
    return Positioned(
      top: 8,
      bottom: 8,
      right: 8,
      left: 8,
      child: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(Strings.assetsImageMan1),
      ),
    );
  }
}
