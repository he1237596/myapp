/*
 * @Author: Chris
 * @Date: 2020-09-22 17:29:46
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-22 17:35:48
 * @Descripttion: 优化版,只有一个TabBar（将tabs写到title内），置顶,(双Scaffold可以取消外面的AppBar的title)
 */
import 'package:flutter/material.dart';

class TabBarDemoPlus extends StatelessWidget {
  const TabBarDemoPlus({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('测试'), //去掉就不会双titile了
      // ),
      body: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey,
              // leading: IconButton(
              //     icon: Icon(Icons.menu),
              //     onPressed: () {
              //       print('menu Pressed');
              //     }),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      flex: 1,
                      child: TabBar(
                        // isScrollable: true, // tab过多重叠时开启即可滚动
                        indicatorColor: Colors.red, // 下划线颜色
                        indicatorWeight: 4, // 下划线粗细
                        indicatorPadding: EdgeInsets.all(0), //
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: Colors.white, // 文字
                        unselectedLabelColor: Colors.yellow,
                        labelPadding: EdgeInsets.all(4),
                        labelStyle: TextStyle(
                          backgroundColor: Colors.redAccent,
                        ),
                        unselectedLabelStyle:
                            TextStyle(backgroundColor: Colors.blue),
                        tabs: [
                          Tab(
                            text: '热门',
                          ),
                          Tab(
                            text: '推荐',
                          ),
                        ],
                      ))
                ],
              ),
            ),
            body: TabBarView(children: <Widget>[
              ListView(
                children: [
                  ListTile(title: Text("这是第一个 tab")),
                  ListTile(title: Text("这是第一个 tab")),
                  ListTile(title: Text("这是第一个 tab"))
                ],
              ),
              ListView(
                children: [
                  ListTile(title: Text("这是第二个 tab")),
                  ListTile(title: Text("这是第二个 tab")),
                  ListTile(title: Text("这是第二个 tab"))
                ],
              ),
            ]),
          )),
    );
  }
}
