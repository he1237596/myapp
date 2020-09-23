/*
 * @Author: Chris
 * @Date: 2020-09-23 15:37:07
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-23 20:53:22
 * @Descripttion: TextField
 */
import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  TextFieldPage({Key key}) : super(key: key);

  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  TextEditingController _editingController =
      TextEditingController(text: 'ddddddd');
  // TextEditingController();

  ///用来控制  TextField 焦点的获取与关闭
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  // @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _editingController.text = '这是初始值';
    // String preText = '这是初始值';
    _editingController.selection = TextSelection(
        baseOffset: 2, extentOffset: _editingController.text.length);

    // ///控制初始化的时候光标保持在文字最后
    // //从第三个字符开始选中后面的字符
    // _editingController = TextEditingController.fromValue(
    //   ///用来设置初始化时显示
    //   TextEditingValue(
    //     ///用来设置文本 controller.text = "0000"
    //     text: preText,

    //     ///设置光标的位置
    //     selection: TextSelection.fromPosition(
    //       ///用来设置文本的位置
    //       TextPosition(
    //           affinity: TextAffinity.downstream,
    //           /// 光标向后移动的长度
    //           offset: preText.length),
    //     ),
    //   ),
    // );

    _editingController.addListener(() {
      print(_editingController.text);
    });
  }

  @override
  void dispose() {
    _editingController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
      ),
      body: Column(
        children: [
          TextField(
            autofocus: true,
            focusNode: focusNode1,
            maxLines: 4,
          ),
          TextField(
            obscureText: true,
            focusNode: focusNode2,
          ),
          TextField(
            // onChanged: (value) {
            //   debugPrint(value);
            // },
            controller: _editingController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person)),
          ),
          RaisedButton(
            onPressed: () {
              if (focusScopeNode == null) {
                focusScopeNode = FocusScope.of(context);
              }
              focusScopeNode.requestFocus(focusNode2);
            },
            child: Text('焦点从1移到2'),
          ),
          RaisedButton(
            onPressed: () {
              _editingController.clear();
            },
            child: Text('清空用户名'),
          ),
        ],
      ),
    );
  }
}
