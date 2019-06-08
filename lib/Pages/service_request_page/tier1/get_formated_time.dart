import 'package:flutter/material.dart';


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

if(toReturn==null) {
  toReturn='failed to find time';
}
  return toReturn;
}

