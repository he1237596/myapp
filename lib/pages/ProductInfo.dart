/*
 * @Author: Chris
 * @Date: 2020-09-19 17:51:30
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-19 18:04:10
 * @Descripttion: **
 */
import 'package:flutter/material.dart';

class ProductInfoPage extends StatelessWidget {
  const ProductInfoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情页'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('点击返回到home页：因为栈内商品页路由历史被替换'),
              onPressed: () {
                // Navigator.pop(context);
                Navigator.of(context).pop();
              },
            ),
            RaisedButton(
              child: Text('点击去更深的路由，测试返回根路由'),
              onPressed: () {
                Navigator.pushNamed(context, '/comments');
              },
            )
          ],
        ),
      ),
    );
  }
}
