import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DatePage extends StatefulWidget {
  DatePage({Key key}) : super(key: key);

  @override
  _DatePageState createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  DateTime _nowDate = DateTime.now();
  var _nowTime = TimeOfDay(hour: 12, minute: 20);
  _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: _nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
    ).then((result) {
      setState(() {
        this._nowDate = result;
      });
    });
  }

  _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: _nowTime,
    ).then((result) {
      setState(() {
        this._nowTime = result;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePicker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("${formatDate(_nowDate, [yyyy, '年', mm, '月', dd, '日'])}"),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: () {
              _showDatePicker();
            },
          ),
          SizedBox(height: 10),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("${_nowTime.format(context)}"),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: () {
              _showTimePicker();
            },
          ),
        ],
      ),
    );
  }
}
