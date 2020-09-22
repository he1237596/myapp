/*
 * @Author: Chris
 * @Date: 2020-09-22 20:30:03
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-22 20:42:21
 * @Descripttion: **
 */
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('搜索'),
        ),
        body: Text('搜索页'),
      ),
    );
  }
}
