/*
 * @Author: Chris
 * @Date: 2020-09-19 14:43:27
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-19 17:20:49
 * @Descripttion: 命名路由传参 arguments
 */
import 'package:flutter/material.dart';
// import '../Search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          RaisedButton(
            child: Text('去搜索页, 传参：20'),
            onPressed: () {
              Navigator.pushNamed(context, '/search', arguments: {'id': 20});
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (BuildContext context) {
              //   return SearchPage(title: '我从首页来');
              // }));
            },
          ),
          RaisedButton(
            child: Text('去搜索页，不传参'),
            onPressed: () {
              Navigator.pushNamed(context, '/search');
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (BuildContext context) {
              //   return SearchPage(title: '我从首页来');
              // }));
            },
          ),
          RaisedButton(
            child: Text('去商品页，传参id: 110'),
            onPressed: () {
              Navigator.pushNamed(context, '/product',
                  arguments: {'id': '110'});
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (BuildContext context) {
              //   return SearchPage(title: '我从首页来');
              // }));
            },
          ),
        ],
      ),
    );
  }
}
