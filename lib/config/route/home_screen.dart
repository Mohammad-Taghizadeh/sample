import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/constant/string_routes.dart';
import 'package:sample/constant/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text(Strings().welcome),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, customScrollViewScreen);
          },
          child: Text("Scroll"),
        ),
        bottomNavigationBar: _bottomNavBar(context));
  }
}

Widget _bottomNavBar(BuildContext context) {
  return Stack(
    children: [
      Positioned(
        bottom: 0,
        child: ClipPath(
          clipper: NavBarClipper(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            color: Colors.blue,
          ),
        ),
      ),
      Positioned(
        bottom: 45,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildNavItem(),
            SizedBox(width: 0,),
            _buildNavItem(),
            SizedBox(width: 0,),
            _buildNavItem(),
  ]
        ),
      )
    ],
  );
}

_buildNavItem(){
  return CircleAvatar(
    radius: 30,
    backgroundColor: Colors.blue.shade800,
    child: CircleAvatar(
      radius: 28,
      backgroundColor: Colors.white70,
    ),
  );
}

class NavBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;

    path.cubicTo(sw / 12, 0, sw / 12, 2 * sh / 5, 2 * sw / 12, 2 * sh / 5);
    path.cubicTo(3 * sw / 12, 2 * sh / 5, 3 * sw / 12, 0, 4 * sw / 12, 0);

    path.cubicTo(5 * sw / 12, 0, 5 * sw / 12, 2 * sh / 5, 6 * sw / 12, 2 * sh / 5);
    path.cubicTo(7 * sw / 12, 2 * sh / 5, 7 * sw / 12, 0, 8 * sw / 12, 0);

    path.cubicTo(9 * sw / 12, 0, 9 * sw / 12, 2 * sh / 5, 10 * sw / 12, 2 * sh / 5);
    path.cubicTo(11 * sw / 12, 2 * sh / 5, 11 * sw / 12, 0, 12 * sw / 12, 0);

    path.cubicTo(13 * sw / 12, 0, 13 * sw / 12, 2* sh /5, 14 * sw / 12, 2* sh / 5);
    // path.cubicTo(15 * sw / 12, 2 * sh / 5, 12 * sw / 12, 0,16* sw/15, 0);
    //
    // path.cubicTo(17 * sw / 12, 0, 17 * sw / 12, 2* sh /5, 18 * sw / 12, 2* sh / 5);
    path.cubicTo(15 * sw / 12, 2 * sh / 5, 12 * sw / 12, 0,sw, 0);
    path.lineTo(sw, sh);
    path.lineTo(0, sh);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
