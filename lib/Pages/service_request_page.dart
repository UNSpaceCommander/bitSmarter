import 'package:flutter/material.dart';
import './service_request_page_widgets/sr_get_formated_date.dart';
import './service_request_page_widgets/sr_get_formated_time.dart';
import '../tier2widgets/bs_default_appbar.dart';
import '../tier2widgets/bs_drawer_builder.dart';
import 'dart:async';

class ServiceRequestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ServiceRequestPage();
  }
}

class _ServiceRequestPage extends State<ServiceRequestPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name;
  String _address;
  String _description;
  DateTime _dateTime = DateTime.now();
  TimeOfDay _time = TimeOfDay.now();
  String _catagory;
  String _subCat;

  Widget createTextField(BuildContext context, Widget inputField) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFC25B56)),
            color: Theme.of(context).primaryColor),
        margin: EdgeInsets.symmetric(vertical: 2.5),
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        child: inputField);
  }

  Widget _buildNameTextFeild() {
    return TextFormField(
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is required';
        }
      },
      onSaved: (String value) {
        setState(() {
          _name = value;
        });
      },
      maxLines: 1,
      decoration: InputDecoration(labelText: 'Name'),
    );
  }

  Widget _buildAddressTextFeild() {
    return TextFormField(
      validator: (String value) {
        if (value.isEmpty) {
          return 'Meeting location address is required';
        }
      },
      onSaved: (String value) {
        setState(() {
          _address = value;
        });
      },
      maxLines: 1,
      decoration: InputDecoration(labelText: 'Meeting Location Address'),
    );
  }

  Widget _buildDescriptionTextFeild() {
    return TextFormField(
      onSaved: (String value) {
        setState(() {
          _description = value;
        });
      },
      maxLines: 4,
      decoration: InputDecoration(labelText: 'Description'),
    );
  }

  void _submitForm() {
    if (!_formKey.currentState.validate()) {
      return;
    }
    ;
    _formKey.currentState.save();
    final Map<String, Object> serviceRequestForm = {
      'name': _name,
      'address': _address,
      'description': _description,
      'dateTime': _dateTime,
      'catagory': _catagory,
      'subCat': _subCat
    };
  }

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _dateTime,
        firstDate: DateTime(2018),
        lastDate: DateTime(2101));
    if (picked != null && picked != _dateTime)
      setState(() {
        _dateTime = picked;
      });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked =
        await showTimePicker(context: context, initialTime: _time);
    if (picked != null && picked != _time)
      setState(() {
        _time = picked;
      });
  }

  Widget selectDate(BuildContext context, DateTime _dateTime) {
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
              child: Icon(Icons.date_range),
            ),
            onTap: () => _selectDate(context),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Selected Date:',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  GetFormatedDate.getFormatedDate(_dateTime),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget selectTime(BuildContext context, DateTime _dateTime) {
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
            onTap: () => _selectTime(context),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Selected Time:',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  GetFormatedTime.getFormatedTime(_time),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppbar.getAppBar(context),
      drawer: BuildDrawer.getDrawer(context),
      body: Container(
        height: MediaQuery.of(context).size.height * 2.0,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(28.0),
                ),
                color: Theme.of(context).accentColor,
              ),
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.only(left: 50.0, right: 50, top: 20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Submit a Service Request',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(
                      height: 2.5,
                    ),
                    createTextField(
                      context,
                      _buildNameTextFeild(),
                    ),
                    createTextField(
                      context,
                      _buildAddressTextFeild(),
                    ),
                    selectDate(context, _dateTime),
                    selectTime(context, _dateTime),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFC25B56)),
                          color: Theme.of(context).primaryColor),
                      margin: EdgeInsets.symmetric(vertical: 2.5),
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        child: DropdownButton(
                          hint: Text('Select Catagory'),
                          items: <String>['TV', 'Computer', 'Phone', 'Internet']
                              .map((String value) {
                            return new DropdownMenuItem<String>(
                              value: _catagory,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (String newValue) {
                            setState(() {
                              _catagory = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                    createTextField(
                      context,
                      _buildDescriptionTextFeild(),
                    ),
                    RaisedButton(
                      child: Text('submit'),
                      onPressed: () {
                        _submitForm();
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
