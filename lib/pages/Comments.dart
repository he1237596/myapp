/*
 * @Author: Chris
 * @Date: 2020-09-19 18:04:33
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-22 10:13:50
 * @Descripttion: **
 */
import 'package:flutter/material.dart';
import 'Tabs.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('评论'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('测试深层路由直接返回根路由'),
          onPressed: () {
            Navigator.of(context).pushNamed('/product', arguments: {'id': 1});
            // 传参
            // Navigator.of(context).pushNamedAndRemoveUntil(
            //     '/product', (Route route) => false,
            //     arguments: {'id': 1}); // 清空栈

            // 传参
            // Navigator.of(context).pushAndRemoveUntil(
            //     new MaterialPageRoute(builder: (context) => new Tabs(index: 1)),
            //     // (route) => route == null);
            //     (route) => false); // true保留跳转的当前栈   false 不保留
            // // Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
          },
        ),
      ),
    );
  }
}
