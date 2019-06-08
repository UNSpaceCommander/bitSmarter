import 'package:flutter/material.dart';
import './tier2/select_time.dart';
import './tier2/select_date.dart';
import '../../tier2widgets/bs_default_appbar.dart';
import '../../tier2widgets/bs_drawer_builder.dart';
import './tier2/name_text_field.dart';
import './tier2/address_text_field.dart';
import './tier2/description_text_field.dart';
import './tier2/form_input_container.dart';
import './tier2/form_wrapper_card.dart';
import './tier2/sub_catagory_dropdown.dart';

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
  DateTime dateTime = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  String _catagory;
  String _subCat;

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
      'dateTime': dateTime,
      'catagory': _catagory,
      'subCat': _subCat
    };
  }

  List<String> collectOptions() {
    List<String> options;

    switch (_catagory) {
      case 'TV':
        options =['Install' , 'Set Up Cable/Wifi/Antenna', 'Other'];
        break;
      case 'Computer':
        options=['Set Up','Remove Virus','Other'];
        break;
      case 'Phone':
        options=['Switch Carrier','Activate/Set Up','Transfer Data','Other'];
        break;
      case 'Internet':
        options=['Install Modem','Install Router','Install Range Extender','Other'];
        break;
    }

    return options;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppbar.getAppBar(context),
      drawer: BuildDrawer.getDrawer(context),
      body: wrapForm(
        context,
        Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Text(
                'Submit a Service Request',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(
                height: 2.5,
              ),
              createTextField(context, NameTextField()),
              createTextField(context, AddressTextField()),
              SelectDate(),
              SelectTime(),
              Row(children: <Widget>[
                createTextField(
                  context,
                  Container(
                    alignment: Alignment.centerLeft,
                    child: DropdownButton<String>(
                      value: _catagory,
                      hint: Text('Select Catagory'),
                      onChanged: (String newValue) {
                        setState(() {
                          _catagory = newValue;
                        });
                      },
                      items: <String>['TV', 'Computer', 'Phone', 'Internet']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value));
                      }).toList(),
                    ),
                  ),
                ),
                CreateSubCatagoryDropDownBox(collectOptions())
              ]),
              createTextField(context, DescriptionTextField()),
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
    );
  }
}
