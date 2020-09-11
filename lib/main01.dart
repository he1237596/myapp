/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-11 14:57:38
 * @Descripttion: GridView.count SizedBox(设置空隙距离)
 */
import 'package:flutter/material.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'MyApp',
        theme: ThemeData.light(),
        home: Scaffold(
          appBar: AppBar(
            title: Text('首页'),
          ),
          body: GridView.count(
            crossAxisCount: 3, // 每行的数量
            crossAxisSpacing: 20.0, //水平子 Widget 之间间距
            mainAxisSpacing: 20.0, //垂直子 Widget 之间间距
            padding: EdgeInsets.all(10),
            childAspectRatio: 0.7, // 子元素宽高比
            children: [
              Container(
                // width: 10, //无效
                // height: 500, //设置高度无效
                decoration:
                    BoxDecoration(color: Color.fromRGBO(233, 233, 233, 0.9)),
                child: Text('111111111'),
              ),
              Container(
                child: Column(
                  children: [
                    Text('111111111'),
                    SizedBox(width: 10),
                    Text('111111111'),
                  ],
                ),
              ),
              Container(
                child: Text('111111111'),
              ),
              Container(
                child: Text('111111111'),
              ),
              Container(
                child: Text('111111111'),
              ),
              Container(
                child: Text('111111111'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
