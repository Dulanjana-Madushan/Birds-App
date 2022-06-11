//import 'dart:js';

import 'package:birds_app/models/bird_model.dart';
import 'package:birds_app/providers/bird_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BirdsListScreen extends StatefulWidget {
  @override
  _BirdsListScreenState createState() => _BirdsListScreenState();
}

class _BirdsListScreenState extends State<BirdsListScreen> {
  @override
  void initState() {
    super.initState();
    // ignore: unused_local_variable
    final mdl = Provider.of<BirdDataProvider>(context, listen: false);
    mdl.loadBird();
  }

  @override
  Widget build(BuildContext context) {
    final mdl = Provider.of<BirdDataProvider>(context);
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            padding: EdgeInsets.all(20),
            itemCount: mdl.birdList.length,
            itemBuilder: (context, index) {
              BirdModel bird = mdl.birdList[index];
              return BirdViewCard(
                  name: bird.name,
                  shortDetail: bird.shortDetail,
                  image: bird.image);
            }));
  }
}

class BirdViewCard extends StatelessWidget {
  final String image;
  final String name;
  final String shortDetail;

  BirdViewCard(
      {required this.shortDetail, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.cover))),
            SizedBox(
              height: 20,
            ),
            Text(
              name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(54, 54, 54, 1)),
            ),
            SizedBox(
              height: 15,
            ),
            Text(shortDetail,
                style: TextStyle(color: Color.fromARGB(141, 144, 145, 1)))
          ],
        ),
      ),
    );
  }
}
