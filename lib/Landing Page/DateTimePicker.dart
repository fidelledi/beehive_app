import 'package:flutter/material.dart';

class dateTimePicker extends StatefulWidget {
  @override
  _dateTimePickerState createState() => _dateTimePickerState();
}

class _dateTimePickerState extends State<dateTimePicker> {
  TimeOfDay _time;
  @override
  void initState() {
    super.initState();
    _time = TimeOfDay.now();
      }
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '${_time.hour}:${_time.minute}'
      ),
      trailing: Icon(Icons.lock_clock),
      onTap: _pickTime,
    );
  }

_pickTime() async {
  TimeOfDay time = await showTimePicker(context: context, initialTime: _time,
  builder: (BuildContext context, Widget child) {
    return Theme(data: ThemeData(
      
    ), child: child,);
  });
  // );
  // if(time != null)
  // setState(() {
  //   _time = time;
  // } );
}
}