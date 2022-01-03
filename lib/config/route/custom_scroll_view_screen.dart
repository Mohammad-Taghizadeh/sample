import 'package:flutter/material.dart';

class CustomScrollViewScreen extends StatelessWidget {
  const CustomScrollViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: _sliversList(),
      ),
    );
  }
}

List<Widget> _sliversList(){
  return [
    SliverAppBar(
     pinned: true,
     expandedHeight: 200.0,
     flexibleSpace: FlexibleSpaceBar(
       title: Text("Sliver"),
       centerTitle: true,
     ),
   ),
    SliverGrid(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 4.0
      ),
      delegate: SliverChildBuilderDelegate(
          (BuildContext context,int index){
            return Container(
               alignment: Alignment.center,
              color: Colors.teal[100 * (index % 9)],
              child: Text("Grid Item $index"),
            );
          },
        childCount: 20
      ),
    ),
    SliverFixedExtentList(
      delegate: SliverChildBuilderDelegate(
              (BuildContext context,int index){
            return Container(
              alignment: Alignment.center,
              color: Colors.lightBlue[100 * (index % 9)],
              child: Text("List Item $index"),
            );
          },
        childCount: 10
      ),
      itemExtent: 50.0,
    )
  ];
}
