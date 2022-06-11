import 'package:birds_app/models/bird_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class BirdDataProvider with ChangeNotifier {
  List<BirdModel> birdList = [];

  loadBird() {
    FirebaseFirestore.instance.collection('birds').get().then((querySnapshot) {
      querySnapshot.docs.forEach((QueryDocSnapshot) {
        if (QueryDocSnapshot.exists) {
          birdList.add(BirdModel.fromJson(QueryDocSnapshot.data()));
        }
      });
      notifyListeners();
    });
  }
}
