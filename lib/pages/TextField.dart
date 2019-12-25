import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  TextFieldPage({Key key}) : super(key: key);

  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  var _username = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _username.text = "初始值";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单页面"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        // child: TextFieldDemo(),
        child: Column(
          children: <Widget>[
            TextField(
                decoration: InputDecoration(hintText: "请输入用户名"),
                controller: _username,
                onChanged: (value) {
                  setState(() {
                    _username.text = value;
                  });
                }),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text("登录"),
                onPressed: () {
                  print(this._username.text);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextFieldDemo extends StatelessWidget {
  const TextFieldDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: "请输入搜索的内容",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText: "多行文本框",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "密码框",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "用户名",
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              hintText: "请输入用户名",
            ),
          ),
        ],
      ),
    );
  }
}
