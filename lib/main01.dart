/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-11 10:47:46
 * @Descripttion: 默认垂直列表（必须设置高度,宽度无效，可以设置ListView外盒子的宽度控制）
 * ListTile内置一些布局，可用可不用
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
          body: ListView(
            children: [
              ListTile(
                title: Text('标题'),
                subtitle: Text('子标题'),
                leading: Icon(Icons.message), // 图片也可以
                trailing: Image.network(
                    'https://images.mogulinker.com/3ea9bf12510a44768cec965451dd7761'),
              ),
              ListTile(
                title: Text('标题'),
                subtitle: Text('子标题'),
                leading: Icon(Icons.message), // 图片也可以
                trailing: Image.network(
                    'https://images.mogulinker.com/3ea9bf12510a44768cec965451dd7761'),
              ),
              ListTile(
                title: Text('标题'),
                subtitle: Text('子标题'),
                leading: Icon(Icons.message), // 图片也可以
                trailing: Image.network(
                    'https://images.mogulinker.com/3ea9bf12510a44768cec965451dd7761'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
