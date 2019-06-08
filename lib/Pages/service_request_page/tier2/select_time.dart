import 'package:flutter/material.dart';
import './selected_time_text.dart';


class SelectTime extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SelectTime();
  }
}

class _SelectTime extends State<SelectTime>{
TimeOfDay _time = TimeOfDay.now();



  Future<void> selectTime(BuildContext context, ) async {
    final TimeOfDay picked =
        await showTimePicker(context: context, initialTime: _time);
    if (picked != null && picked != _time)
      setState(() {
        _time = picked;
      });
  }




Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          GestureDetector(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    offset: Offset(0.0, 1.0),
                  )
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                color: Color(0xFF96C0CE),
              ),
              child: Icon(Icons.access_time),
            ),
            onTap: () => selectTime(context),
          ),
          youSelected(_time),
        ],
      ),
    );
  }
}
