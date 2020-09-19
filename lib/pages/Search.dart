/*
 * @Author: Chris
 * @Date: 2020-09-19 14:49:03
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-19 16:56:06
 * @Descripttion: 接收参数 arguments
 */
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final Map arguments;
  const SearchPage({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索'),
      ),
      body: Text("我从首页来，所带参数为 ${arguments != null ? arguments['id'] : '没带id'}"),
    );
  }
}
