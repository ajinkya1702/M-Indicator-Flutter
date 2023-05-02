// ignore_for_file: unused_element, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MySample extends StatefulWidget {
  const MySample({Key? key}) : super(key: key);

  @override
  State<MySample> createState() => _MySampleState();
}

class _MySampleState extends State<MySample> {
  CollectionReference referenceStationsList =
      FirebaseFirestore.instance.collection('stations');
  late Stream<QuerySnapshot> streamStationsList;

  @override
  void initState() {
    super.initState();
    streamStationsList = referenceStationsList.snapshots();
  }

  String colors = '255, 20, 19, 19';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 20, 19, 19),
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
          body: TabBarView(children: <Widget>[
            Column(children: [
              Container(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: Image.asset(
                    'assets/images/stationtab.jpeg',
                    fit: BoxFit.cover,
                  )),
              Container(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Flexible(
                child: StreamBuilder<QuerySnapshot>(
                  stream: streamStationsList,
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasError) {
                      return Center(child: Text(snapshot.error.toString()));
                    }

                    if (snapshot.connectionState == ConnectionState.active) {
                      QuerySnapshot querySnapshot = snapshot.data;
                      List<QueryDocumentSnapshot> listQueryDocumentSnapshot =
                          querySnapshot.docs;

                      return ListView.builder(
                          // shrinkWrap: true,
                          itemCount: listQueryDocumentSnapshot.length,
                          itemBuilder: (context, index) {
                            if (index % 2 != 0 && index > 0) {
                              return Container(
                                color: Color.fromARGB(255, 39, 37, 37),
                                child: ListTile(
                                  title: Text(
                                    listQueryDocumentSnapshot[index]['1'],
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  leading: Icon(Icons.circle_rounded),
                                  iconColor: Colors.white,
                                ),
                              );
                            }
                            return ListTile(
                              title: Text(
                                listQueryDocumentSnapshot[index]['1'],
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              leading: Icon(Icons.circle_rounded),
                              iconColor: Colors.white,
                            );
                          });
                    }

                    return Center(child: CircularProgressIndicator());
                  },
                ),
              )
            ]),
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
          ]),
        ));
  }
}
