import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  var sex = 1;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            // Row(
            //   children: <Widget>[
            //     Text("男"),
            //     Radio(
            //       value: 1,
            //       onChanged: (v) {
            //         setState(() {
            //           this.sex = v;
            //         });
            //       },
            //       groupValue: this.sex,
            //     ),
            //     Text("女"),
            //     Radio(
            //       value: 2,
            //       onChanged: (v) {
            //         setState(() {
            //           this.sex = v;
            //         });
            //       },
            //       groupValue: this.sex,
            //     )
            //   ],
            // ),
            // Row(
            //   children: <Widget>[
            //     Text(this.sex == 1 ? "男" : "女"),
            //   ],
            // ),
            SizedBox(
              height: 20,
            ),
            RadioListTile(
              value: 1,
              onChanged: (v) {
                setState(() {
                  this.sex = v;
                });
              },
              groupValue: this.sex,
              title: Text("标题"),
              subtitle: Text("二级标题"),
              secondary: Icon(Icons.help),
              selected: this.sex == 1,
            ),
            RadioListTile(
              value: 2,
              onChanged: (v) {
                setState(() {
                  this.sex = v;
                });
              },
              groupValue: this.sex,
              title: Text("标题"),
              subtitle: Text("二级标题"),
              secondary: Icon(Icons.help),
              selected: this.sex == 2,
            ),
            SizedBox(height: 20),
            Switch(
              value: this.flag,
              onChanged: (v) {
                setState(() {
                  print(v);
                  this.flag = v;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
