/*
 * @Author: Chris
 * @Date: 2020-09-19 17:14:21
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-19 17:26:09
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
      body: Text('商品页接收参数：${arguments['id']}'),
    );
  }
}
