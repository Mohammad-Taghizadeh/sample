import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/constant/colors.dart';

class ActivityMain extends StatelessWidget {
  const ActivityMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.theme;
    return Column(
      children: [
        Row(
          children: [
            Text("Activity",
              style: Get.textTheme.bodyText1)
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              height: 85,
              decoration: BoxDecoration(
                color: CColors.boxColor1,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.style,color: CColors.iconBox1,size: 35,),
                  Text("My Card",
                    style: TextStyle(fontWeight: FontWeight.bold,color: CColors.textBox1,fontSize: 16),)
                ],
              ),
            ),
            Container(
              width: 100,
              height: 85,
              decoration: BoxDecoration(
                color: CColors.boxColor2,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Transform.rotate(angle: 11.5,child: Icon(Icons.send,color: CColors.iconBox2,size: 35,)),
                  Text("Transfer",style: TextStyle(fontWeight: FontWeight.bold,color: CColors.textBox1,fontSize: 16),)
                ],
              ),
            ),
            Container(
              width: 100,
              height: 85,
              decoration: BoxDecoration(
                color: CColors.boxColor3,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.bar_chart,color: CColors.iconBox3,size: 35,),
                  Text("Statistics",style: TextStyle(fontWeight: FontWeight.bold,color: CColors.textBox1,fontSize: 16),)
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
