import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮页面"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("普通按钮"),
                onPressed: () {
                  print("普通按钮");
                },
              ),
              SizedBox(width: 10),
              RaisedButton(
                child: Text("有颜色按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print("有颜色按钮");
                },
              ),
              SizedBox(width: 10),
              RaisedButton(
                child: Text("有阴影按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 20,
                onPressed: () {
                  print("有阴影按钮");
                },
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton.icon(
                icon: Icon(Icons.search),
                label: Text("图标按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print("按钮图标");
                },
              ),
              SizedBox(width: 10),
              RaisedButton(
                child: Text("圆角按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  print("圆角按钮");
                },
              ),
              SizedBox(width: 10),
              Container(
                height: 80,
                child: RaisedButton(
                  child: Text("圆型按钮"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  splashColor: Colors.yellow,
                  shape: CircleBorder(
                      side: BorderSide(
                    color: Colors.white,
                  )),
                  onPressed: () {
                    print("圆型按钮");
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 300,
                height: 50,
                child: RaisedButton(
                  child: Text("宽度按钮"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  splashColor: Colors.yellow,
                  onPressed: () {
                    print("宽度按钮");
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text("自适应屏幕宽度按钮"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      print("自适应屏幕宽度按钮");
                    },
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          FlatButton(
            child: Text("flatbutton"),
            color: Colors.blue,
            textColor: Colors.yellow,
            onPressed: () {
              print("flatbutton");
            },
          ),
          SizedBox(height: 10),
          //无背景色效果
          OutlineButton(
            child: Text("OutlineButton"),
            color: Colors.blue, //没有效果
            textColor: Colors.blue,
            onPressed: () {
              print("OutlineButton");
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //按钮组
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text("按钮1"),
                    onPressed: () {
                      print("按钮1");
                    },
                  ),
                  RaisedButton(
                    child: Text("按钮2"),
                    onPressed: () {
                      print("按钮2");
                    },
                  ),
                  MyButton(
                    text: "自定义按钮",
                    pressed: () {
                      print("自定义按钮");
                    },
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

//自定义按钮组件
class MyButton extends StatelessWidget {
  final text;
  final pressed;
  const MyButton({this.text = '', this.pressed = null});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 120,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }
}
