// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Mumbai"),
          backgroundColor: Colors.red,
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 39, 37, 37),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Text(
                  'Mumbai',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                leading: Icon(Icons.info_rounded),
                title: Text('Select Language'),
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                leading: Icon(Icons.thumbs_up_down),
                title: Text('Rate Us'),
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                leading: Icon(Icons.android_sharp),
                title: Text('Upgrade'),
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                leading: Icon(Icons.mail_outlined),
                title: Text('Feedback'),
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                leading: Icon(Icons.call),
                title: Text('Contact Us'),
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                leading: Icon(Icons.computer_outlined),
                title: Text('Advertise With Us'),
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                leading: Icon(Icons.document_scanner),
                title: Text('Terms & Conditions'),
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                leading: Icon(Icons.info_rounded),
                title: Text('Version'),
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
        body: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: [
            Container(
                child: Image.asset(
              'assets/images/local.jpeg',
              fit: BoxFit.cover,
            )),
            Container(
                child: Image.asset(
              'assets/images/bus.jpeg',
              fit: BoxFit.cover,
            )),
            Container(
                child: Image.asset(
              'assets/images/express.jpeg',
              fit: BoxFit.cover,
            )),
            Container(
                child: Image.asset(
              'assets/images/MSRTC.jpeg',
              fit: BoxFit.cover,
            )),
            Container(
                child: Image.asset(
              'assets/images/trainchat.jpeg',
              fit: BoxFit.cover,
            )),
            Container(
                child: Image.asset(
              'assets/images/mono.jpeg',
              fit: BoxFit.cover,
            )),
            Container(
                child: Image.asset(
              'assets/images/metro.jpeg',
              fit: BoxFit.cover,
            )),
            Container(
                child: Image.asset(
              'assets/images/auto.jpeg',
              fit: BoxFit.cover,
            )),
            Container(
                child: Image.asset(
              'assets/images/cab.jpeg',
              fit: BoxFit.cover,
            )),
            Container(
                child: Image.asset(
              'assets/images/ferry.jpeg',
              fit: BoxFit.cover,
            )),
            Container(
                child: Image.asset(
              'assets/images/jobs.jpeg',
              fit: BoxFit.cover,
            )),
            Container(
                child: Image.asset(
              'assets/images/map.jpeg',
              fit: BoxFit.cover,
            )),
          ],
        ));
  }
}
