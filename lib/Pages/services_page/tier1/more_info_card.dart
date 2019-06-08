 import 'package:flutter/material.dart';
 
 
 Widget servicesContainer(BuildContext context, Color color) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(28.0), topRight: Radius.circular(28.0)),
          color: Color(0xFFC25B56),
        ),
        height: MediaQuery.of(context).size.height * .8,
      ),
    );
  }