import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/constant/colors.dart';
import 'package:sample/widget/home/main/activity_main.dart';

class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 3,
      child: Container(
        padding: EdgeInsets.only(top: 120,left: 10),
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
           ActivityMain(),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("Categories",
                  style: TextStyle(fontSize: 26,
                      fontWeight: FontWeight.bold),)
              ],
            ),
            Expanded(child: ListView.builder(
              itemCount: 3,
              itemBuilder: (c,i)=> Container(
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
                                  Text("Food",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text('\$120 (20%)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Stack(
                              children: <Widget>[
                                Container(
                                  width:  MediaQuery.of(context).size.width - 45,
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
                                  width: MediaQuery.of(context).size.width * 0.2, // here you can define your percentage of progress, 0.2 = 20%, 0.3 = 30 % .....
                                  height: 6,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
