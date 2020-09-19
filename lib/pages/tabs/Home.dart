/*
 * @Author: Chris
 * @Date: 2020-09-19 14:43:27
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-19 15:27:08
 * @Descripttion: 基本路由
 */
import 'package:flutter/material.dart';
import '../Search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('去搜索页'),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return SearchPage(title: '我从首页来');
          }));
        },
      ),
    );
  }
}
