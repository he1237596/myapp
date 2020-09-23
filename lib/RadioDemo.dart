/*
 * @Author: Chris
 * @Date: 2020-09-23 15:37:07
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-23 20:53:07
 * @Descripttion: Radio/Switch
 */
import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  int _raidoValue = 1;
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio/Switch'),
      ),
      body: Column(
        children: [
          Switch(
              value: _switchValue,
              onChanged: (value) {
                this.setState(() {
                  _switchValue = value;
                });
              }),
          Radio(
              value: 1,
              groupValue: this._raidoValue,
              activeColor: Colors.red,
              onChanged: (value) {
                this.setState(() {
                  _raidoValue = value;
                });
              }),
          Radio(
              value: 2,
              groupValue: this._raidoValue,
              activeColor: Colors.red,
              onChanged: (value) {
                this.setState(() {
                  _raidoValue = value;
                });
              }),
          RadioListTile(
              title: Text('男'),
              groupValue: this._raidoValue,
              subtitle: Text('野蛮人'),
              value: 1,
              secondary: Icon(Icons.people),
              onChanged: (value) {
                this.setState(() {
                  _raidoValue = value;
                });
              }),
          RadioListTile(
              title: Text('女'),
              groupValue: this._raidoValue,
              subtitle: Text('不是人'),
              value: 2,
              secondary: Icon(Icons.people),
              onChanged: (value) {
                this.setState(() {
                  _raidoValue = value;
                });
              })
        ],
      ),
    );
  }
}
