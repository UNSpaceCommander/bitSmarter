import 'package:flutter/material.dart';
import '../tier2widgets/bs_default_appbar.dart';
import '../tier2widgets/bs_drawer_builder.dart';
import './our_team_page_widgets/ot_create_info_card.dart';


class OurTeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: DefaultAppbar.getAppBar(context),
        drawer: BuildDrawer.getDrawer(context),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).accentColor),
                    color: Colors.white),
                child: Container(
                  color: Color(0xFFC25B56),
                  child: Text(
                    'About Our Team',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'roboto',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              CreateInfoCard().createInfoCard(
                  context,
                  'images/mapusa.jpg',
                  'We use an entirely automatic hiring process to employ people all over the United States.'),
              SizedBox(height: 20.0),
              CreateInfoCard().createInfoCard(
                  context,
                  'images/diverse team.jpg',
                  'We hire people from all backgrounds with varying levels of IT knowledge. From students to industry professionals.'),
              SizedBox(height: 20.0),
              CreateInfoCard().createInfoCard(
                  context,
                  'images/catagory.jpg',
                  'Employees are catagorized by education level, previous experiences and track record with bitSmarter.'),
              SizedBox(height: 20.0),
              CreateInfoCard().createInfoCard(
                  context,
                  'images/data.jpg',
                  'We match customers service requests with people capable of solving their problems using algoritims to determine the expected difficulty of each request.'),
            ],
          ),
        ));
  }
}
