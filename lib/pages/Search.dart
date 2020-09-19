/*
 * @Author: Chris
 * @Date: 2020-09-19 14:49:03
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-19 15:25:57
 * @Descripttion: **
 */
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final String title;
  const SearchPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索'),
      ),
      body: Text(this.title),
    );
  }
}
