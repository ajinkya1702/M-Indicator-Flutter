// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseManager {
  final CollectionReference stations =
      FirebaseFirestore.instance.collection('stations');

  Future getStationsList() async {
    List stationsList = [];

    try {
      await stations.get().then((querySnapshot) {
        querySnapshot.docs.forEach((element) {
          stationsList.add(element.data);
        });
      });
      return stationsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
