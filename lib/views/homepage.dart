import 'package:flutter/material.dart';
import 'package:tune_app/components/items.dart';
import 'package:tune_app/models/items_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<ItemsModel> item = const [
    ItemsModel(color: Colors.red, sound: "note1.wav"),
    ItemsModel(color: Colors.orange, sound: "note2.wav"),
    ItemsModel(color: Colors.green, sound: "note3.wav"),
    ItemsModel(color: Colors.yellow, sound: "note4.wav"),
    ItemsModel(color: Color.fromARGB(255, 5, 78, 7), sound: "note5.wav"),
    ItemsModel(color: Colors.blue, sound: "note6.wav"),
    ItemsModel(color: Color.fromARGB(255, 86, 0, 139), sound: "note7.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xff383831),
          title: const Text(
            "Flutter Tune",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
        ),
        body: Column(
          children: item
              .map(
                (e) => Items(tune: e),
              )
              .toList(),
        ));
  }
}
