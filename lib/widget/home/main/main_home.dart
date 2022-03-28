import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/constant/colors.dart';
import 'package:sample/widget/home/main/activity_main.dart';

class MainHome extends StatelessWidget {
   MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.theme;
    return Flexible(
      flex: 3,
      child: Container(
        padding: EdgeInsets.only(top: Get.height / 4.5),
        color: Get.theme.scaffoldBackgroundColor,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 5),
          children: [
           ActivityMain(),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("Categories", style: Get.textTheme.bodyText1)
              ],
            ),
            ...item.map((e) => Container(
              height: 80,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.fastfood,color: Colors.orange,),
                                SizedBox(width: 10,),
                                Text(e["name"],style: Get.textTheme.subtitle1)
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text(e["price"],style: Get.textTheme.subtitle1)
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: CColors.secondaryColor,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  height: 6,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: CColors.primaryColor,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  width: Get.width * e["size"], // here you can define your percentage of progress, 0.2 = 20%, 0.3 = 30 % .....
                                  height: 6,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )).toList()
          ],
        ),
      ),
    );
  }
 final List item =
 [{"name":"Food","price":"\$120 (20%)","size": .2},
   {"name":"Health","price":"\$150 (40%)","size": .4},
   {"name":"Developer","price":"\$180 (60%)","size": .6}];
}
