// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LocalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Code Sample',
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 10,
            tabs: <Widget>[
              Tab(
                text: 'STATION',
              ),
              Tab(
                text: 'A to B',
              ),
              Tab(
                text: 'FARE',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                      child: Image.asset(
                        'assets/images/stationtab.jpeg',
                        fit: BoxFit.cover,
                      )),
                  Container(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                  Container(
                    child: ListTile(
                      title: Text(
                        'Airoli',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.circle_rounded),
                      iconColor: Colors.white,
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 20, 19, 19),
                    child: ListTile(
                      title: Text(
                        'Aman Lodge',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.circle_rounded),
                      iconColor: Colors.white,
                    ),
                  ),
                  Container(
                    child: ListTile(
                      title: Text(
                        'Ambernath',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.circle_rounded),
                      iconColor: Colors.white,
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 20, 19, 19),
                    child: ListTile(
                      title: Text(
                        'Ambivli',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.circle_rounded),
                      iconColor: Colors.white,
                    ),
                  ),
                  Container(
                    child: ListTile(
                      title: Text(
                        'Andheri',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.circle_rounded),
                      iconColor: Colors.white,
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 20, 19, 19),
                    child: ListTile(
                      title: Text(
                        'Apta',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.circle_rounded),
                      iconColor: Colors.white,
                    ),
                  ),
                  Container(
                    child: ListTile(
                      title: Text(
                        'Asangaon',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.circle_rounded),
                      iconColor: Colors.white,
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 20, 19, 19),
                    child: ListTile(
                      title: Text(
                        'Atgaon',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.circle_rounded),
                      iconColor: Colors.white,
                    ),
                  ),
                  Container(
                    child: ListTile(
                      title: Text(
                        'Badlapur',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.circle_rounded),
                      iconColor: Colors.white,
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 20, 19, 19),
                    child: ListTile(
                      title: Text(
                        'Bamandongri',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.circle_rounded),
                      iconColor: Colors.white,
                    ),
                  ),
                  Container(
                    child: ListTile(
                      title: Text(
                        'Bandra',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.circle_rounded),
                      iconColor: Colors.white,
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 20, 19, 19),
                    child: ListTile(
                      title: Text(
                        'Belapur CBD',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.circle_rounded),
                      iconColor: Colors.white,
                    ),
                  ),
                  Container(
                    child: ListTile(
                      title: Text(
                        'Bhandup',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.circle_rounded),
                      iconColor: Colors.white,
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 20, 19, 19),
                    child: ListTile(
                      title: Text(
                        'Bhayander',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.circle_rounded),
                      iconColor: Colors.white,
                    ),
                  ),
                  Container(
                    child: ListTile(
                      title: Text(
                        'Bhivpuri Road',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.circle_rounded),
                      iconColor: Colors.white,
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 20, 19, 19),
                    child: ListTile(
                      title: Text(
                        'Bhiwandi Road',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.circle_rounded),
                      iconColor: Colors.white,
                    ),
                  ),
                  Container(
                    child: ListTile(
                      title: Text(
                        'Boisar',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.circle_rounded),
                      iconColor: Colors.white,
                    ),
                  ),
                ]),
              ),
            ),
            Container(
                child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 15),
                      child: Image.asset(
                        'assets/images/atbtab.jpeg',
                        fit: BoxFit.cover,
                      )),
                  Container(
                    color: Colors.red,
                    child: ListTile(
                        title: Center(
                      child: Text(
                        'SEARCH',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                  )
                ],
              ),
            )),
            Container(
                child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 15),
                      child: Image.asset(
                        'assets/images/faretab.jpeg',
                        fit: BoxFit.cover,
                      )),
                  Container(
                    color: Colors.red,
                    child: ListTile(
                        title: Center(
                      child: Text(
                        'SEARCH',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                  )
                ],
              ),
            )),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 39, 37, 37),
      ),
    );
  }
}
