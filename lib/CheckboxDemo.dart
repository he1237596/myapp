/*
 * @Author: Chris
 * @Date: 2020-09-23 15:37:07
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-23 20:52:58
 * @Descripttion: Checkbox 
 */
import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  CheckboxPage({Key key}) : super(key: key);

  @override
  _CheckboxPageState createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool _switchValue = true;
  bool _checkedValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
      ),
      body: Column(
        children: [
          Checkbox(
              value: _checkedValue,
              activeColor: Colors.red,
              onChanged: (value) {
                this.setState(() {
                  _checkedValue = value;
                });
              }),
          CheckboxListTile(
              title: Text('男'),
              subtitle: Text('野蛮人'),
              value: _checkedValue,
              secondary: Icon(Icons.people),
              activeColor: Colors.redAccent, // 选中颜色
              selected: _checkedValue, // 内容跟随选中变色
              onChanged: (value) {
                this.setState(() {
                  _checkedValue = value;
                });
              })
        ],
      ),
    );
  }
}
