/*
 * @Author: Chris
 * @Date: 2020-09-22 17:58:03
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-22 18:16:15
 * @Descripttion: 自定义TabController,监听切换事件
 */
import 'package:flutter/material.dart';

class TabControllerDemo extends StatefulWidget {
  TabControllerDemo({Key key}) : super(key: key);

  @override
  _TabControllerDemoState createState() => _TabControllerDemoState();
}

class _TabControllerDemoState extends State<TabControllerDemo>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._tabController = new TabController(length: 4, vsync: this);
    this._tabController.addListener(() {
      print(this._tabController.index);
    });
  }

// 可写可不写
  // void dispose() {
  //   // TODO: implement dispose
  //   this._tabController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('顶部Tab切换'),
        bottom: new TabBar(
          tabs: [
            Tab(
              child: Text('tab1'),
            ),
            Tab(
              child: Text('tab2'),
            ),
            Tab(
              child: Text('tab3'),
            ),
            Tab(
              child: Text('tab4'),
            ),
          ],
          controller: this._tabController,
        ),
      ),
      body: TabBarView(
        children: [
          Center(
            child: Text('tab1'),
          ),
          Center(
            child: Text('tab2'),
          ),
          Center(
            child: Text('tab3'),
          ),
          Center(
            child: Text('tab4'),
          ),
        ],
        controller: this._tabController,
      ),
    );
  }
}
