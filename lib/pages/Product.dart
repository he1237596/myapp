/*
 * @Author: Chris
 * @Date: 2020-09-19 17:14:21
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-19 17:53:52
 * @Descripttion: 有状态组件接收参数 arguments
 */
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  final Map arguments;
  ProductPage({
    Key key,
    this.arguments,
  }) : super(key: key);

  @override
  _ProductPageState createState() =>
      _ProductPageState(arguments: this.arguments);
}

class _ProductPageState extends State<ProductPage> {
  final Map arguments;
  _ProductPageState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品'),
      ),
      body: Column(
        children: [
          Text('商品页接收参数：${arguments['id']}'),
          RaisedButton(
            child: Text('去详情页测试路由替换'),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/productInfo');
            },
          )
        ],
      ),
    );
  }
}
