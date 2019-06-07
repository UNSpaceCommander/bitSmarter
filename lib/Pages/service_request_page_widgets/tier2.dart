import 'package:flutter/material.dart';
import '../service_request_page.dart';
import './tier1.dart';

class SRPtier2 {}

String getFormatedDate(DateTime selected) {

    DateTime tommorrow = DateTime.now();
    Duration oneDay = new Duration(days: 1);
    tommorrow.add(oneDay);

  DateTime today = DateTime.now();
  String month;
  String weekday;

  switch (selected.month) {
    case 1:
      month = 'January';
      break;
    case 2:
      month = "February";
      break;
    case 3:
      month = "March";
      break;
    case 4:
      month = "April";
      break;
    case 5:
      month = "May";
      break;
    case 6:
      month = "June";
      break;
    case 7:
      month = "July";
      break;
    case 8:
      month = "August";
      break;
    case 9:
      month = "September";
      break;
    case 10:
      month = "October";
      break;
    case 11:
      month = "November";
      break;
    case 12:
      month = "December";
      break;
    default:
      {
        print('invalid date');
      }
  }
  switch (selected.weekday) {
    case 1:
      weekday = "Monday";
      break;
    case 2:
      weekday = "Tuesday";
      break;
    case 3:
      weekday = "Wednesday";
      break;
    case 4:
      weekday = "Thurdsday";
      break;
    case 5:
      weekday = "Friday";
      break;
    case 6:
      weekday = "Saturday";
      break;
    case 7:
      weekday = "Sunday";
      break;
    default:
      {
        print('invalid date');
      }
  }
  return '$weekday $month ${selected.day}, ${selected.year}';
}


String getFormatedTime(TimeOfDay time){
String temp;
temp=time.toString();
int start = temp.indexOf('(');
start+=1;
int end = temp.indexOf(')');
temp = temp.substring(start, end);
int colon = temp.indexOf(':');
String hour = temp.substring(0,colon);
String minute = temp.substring(colon);
int intHour = int.parse(hour);

String toReturn;
if(intHour > 12){
intHour-=12;
toReturn = intHour.toString()+minute+'PM';
}

if(intHour<12 && intHour>0){
toReturn =intHour.toString()+minute+'AM';
}

if(intHour==0){
  intHour+=12;
  toReturn= intHour.toString()+minute+'AM';
}

  return toReturn;
}

