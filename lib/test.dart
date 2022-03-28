import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          height: 450,
          child: TableCalendar(
            onDaySelected: (date,time){
              print(date);
            },
            focusedDay: DateTime.now(),
            lastDay: DateTime.utc(2023,01,01),
            firstDay: DateTime.utc(2020,01,01),
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
            ),
            shouldFillViewport: true,
            calendarStyle: CalendarStyle(
              outsideDaysVisible: false,
              selectedDecoration: BoxDecoration(
                color: Colors.red
              ),
            ),
             calendarBuilders: CalendarBuilders(
               markerBuilder: (context,date,time) =>Row(
                 children: [
                   Expanded(
                     child: Container(
                         height: 100,
                         margin: EdgeInsets.all(3),
                         padding: EdgeInsets.all(2),
                         decoration: BoxDecoration(
                           color: Colors.green,
                             border: Border.all(),
                             borderRadius: BorderRadius.circular(8)
                         ),
                         child: Center(
                           child: RichText(
                             text: TextSpan(
                                 style: TextStyle(color: Colors.black),
                                 children: [
                                   TextSpan(text: "${date.day.toString()}\n\n",
                                       style: TextStyle(fontWeight: FontWeight.bold)),
                                   TextSpan(text: _list.where((e) => e["date"]== date.toString())
                                       .map((e) => e["value"]).toString().replaceAll("(", "").replaceAll(")", "")),
                                   //date.day.toString() == "5" ?"5.0":"1.0"),
                                 ]
                             ),
                           ),
                         )
                     ),
                   ),
                 ],
               ),
               // todayBuilder: (context,date,time) =>Row(
               //   children: [
               //     Expanded(
               //       child: Container(
               //         height: 100,
               //         margin: EdgeInsets.all(3),
               //             padding: EdgeInsets.all(2),
               //             decoration: BoxDecoration(
               //                 border: Border.all(),
               //                 borderRadius: BorderRadius.circular(8)
               //             ),
               //             child: Container(
               //               alignment: Alignment.bottomRight,
               //               child: RichText(
               //                 text: TextSpan(
               //                     style: TextStyle(color: Colors.black),
               //                     children: [
               //                       // TextSpan(text: "${date.day.toString()}\n\n",
               //                       //     style: TextStyle(fontWeight: FontWeight.bold)),
               //                       TextSpan(text: _list.where((e) => e["date"]== date.toString())
               //                           .map((e) => e["value"]).toString().replaceAll("(", "").replaceAll(")", "")),
               //                       //date.day.toString() == "5" ?"5.0":"1.0"),
               //                     ]
               //                 ),
               //               ),
               //             )
               //         ),
               //     ),
               //   ],
               // ),
             ),
          )
        ),
      ),
    );
  }

List _list= [
  {"date":"2022-02-03 00:00:00.000Z","value":"4.0"},
  {"date":"2022-02-02 00:00:00.000Z","value":"6.0"},
  {"date":"2022-02-04 00:00:00.000Z","value":"8.0"},
  {"date":"2022-03-04 00:00:00.000Z","value":"80.0"},
  {"date":"2022-03-15 00:00:00.000Z","value":"9.0"},
  {"date":"2022-01-04 00:00:00.000Z","value":"2.0"},
];

  // prioritizedBuilder: (context,date,time) =>Row(
  // children: [
  // Expanded(
  // child: Container(
  // height: 100,
  // margin: EdgeInsets.all(3),
  // padding: EdgeInsets.all(2),
  // decoration: BoxDecoration(
  // border: Border.all(),
  // borderRadius: BorderRadius.circular(8)
  // ),
  // child: RichText(
  // text: TextSpan(
  // style: TextStyle(color: Colors.black),
  // children: [
  // TextSpan(text: "${date.day.toString()}\n\n",
  // style: TextStyle(fontWeight: FontWeight.bold)),
  // TextSpan(text: _list.where((e) => e["date"]== date.toString())
  //     .map((e) => e["value"]).toString().replaceAll("(", "").replaceAll(")", "")),
  // //date.day.toString() == "5" ?"5.0":"1.0"),
  // ]
  // ),
  // )
  // ),
  // ),
  // ],
  // ),
}
