/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-12 18:06:14
 * @Descripttion: 注意：Container会根据自身以及父节点的限制，将自身调节得足够大，也就是宽高无效(原因和规律待确认)
 */
import 'package:flutter/material.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: MyHome(),
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red, //该属性和decoration同时使用会报错，Container
      child: Text(
        'Hello World',

        // textAlign: TextAlign.end,
        // textDirection: TextDirection.rtl,
        textScaleFactor: 1.8,
        style: TextStyle(
            fontSize: 30,
            color: Colors.redAccent,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.green,
            decorationStyle: TextDecorationStyle.dashed),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.yellow,
          border: Border.all(color: Colors.purple, width: 1.0)),
      width: double.infinity, //铺满宽度
      height: 200,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      alignment: Alignment.bottomCenter,
    );
  }
}
