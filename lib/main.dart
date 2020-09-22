/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-22 20:46:27
 * @Descripttion: 左右侧边栏
 */
import 'package:flutter/material.dart';
import 'Search.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'MyApp',
        theme: ThemeData.light(),
        routes: {'/search': (context) => SearchPage()},
        home: Scaffold(
          drawer: Drawer(
            child: Column(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://www.itying.com/images/flutter/2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ListView(
                    children: [Text('这是一个drawer头部')],
                  ),
                ),
                Divider(),
                Content(),
              ],
            ),
          ),
          // 基本用法
          // endDrawer: Drawer(
          //   child: Text('右侧边栏'),
          // ),
          endDrawer: Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text('账户名称'),
                  accountEmail: Text('he1237596@163.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.itying.com/images/flutter/2.png'),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.itying.com/images/flutter/2.png'),
                          fit: BoxFit.cover)),
                  otherAccountsPictures: [
                    Image.network(
                        "https://www.itying.com/images/flutter/4.png"),
                    Image.network(
                        "https://www.itying.com/images/flutter/5.png"),
                    Image.network(
                        "https://www.itying.com/images/flutter/6.png"),
                  ],
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('首页'),
          ),
          body: Text('Hello World'),
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.people),
      ),
      title: Text('个人中心'),
      onTap: () {
        // 关掉侧边栏 跳转页面
        // 不能直接使用组件的context作为参数，所以在此处封装该组件,否则报错,原因: context不能为用户构建widget最根部的context，
        Navigator.of(context).pop();
        Navigator.of(context).pushNamed('/');
      },
    );
  }
}
