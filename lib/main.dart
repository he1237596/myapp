/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-19 15:04:28
 * @Descripttion: **
 */
import 'package:flutter/material.dart';
import 'pages/Tabs.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'MyApp',
        theme: ThemeData.light(),
        home: Tabs(),
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   HomePage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: RaisedButton(
//         onPressed: () {
//           Navigator.of(context).push(MaterialPageRoute(
//             builder: (BuildContext context) {
//               return Search();
//             },
//           ));
//         },
//         child: Text('跳转到搜索页'),
//       ),
//     );
//   }
// }
