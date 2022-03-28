import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/constant/colors.dart';
import 'package:sample/constant/strings.dart';
import 'package:sample/controllers/theme_controller.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.theme;
    Get.put(ThemeController());
    return Flexible(
      flex: 2,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: _boxDecoration(),
        child: Column(
          children: [
            _rowTop(),
            SizedBox(
              height: 10,
            ),
            _rowMain()
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
        gradient: LinearGradient(
            colors: [CColors.primaryColor, CColors.primaryColorDark]));
  }

  Widget _rowTop() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.sort,
          color: Get.textTheme.headline1!.color,
          size: 30,
        ),
        Text(
          Strings.availableBalance,
          style: Get.textTheme.headline6
        ),
        GetBuilder<ThemeController>(
          builder: (theme) => IconButton(
            onPressed: () {
              theme.changeTheme();
            },
            icon: AnimatedSwitcher(
              duration: Duration(milliseconds: 600),
              transitionBuilder: (child, animation) => ScaleTransition(
                scale: animation,
                child: child,
              ),
              child: theme.isDarkTheme
                  ? Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                      key: Key("1"),
                    )
                  : Transform.rotate(
                      angle: .8,
                      child: Icon(
                        Icons.brightness_3,
                        size: 30,
                        color: CColors.textColorLight,
                        key: Key("2"),
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _rowMain() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Stack(children: [_circleImage1(), _circleImage2()]),
        Flexible(
          child: Text(
            Strings.userNameAndAmount,
            style: Get.textTheme.headline6
          ),
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }

  Widget _circleImage1() {
    return CircleAvatar(
      radius: 55,
      backgroundColor: Colors.transparent,
      child: Container(decoration: _boxDecorationImage()),
    );
  }

  BoxDecoration _boxDecorationImage() {
    return BoxDecoration(
      color: Colors.transparent,
      shape: BoxShape.circle,
      border: Border.all(color: Get.textTheme.headline6!.color!, width: 2),
    );
  }

  Widget _circleImage2() {
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
