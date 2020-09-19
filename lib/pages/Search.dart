/*
 * @Author: Chris
 * @Date: 2020-09-19 14:49:03
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-19 14:54:05
 * @Descripttion: **
 */
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索'),
      ),
      body: Text('搜索'),
    );
  }
}
