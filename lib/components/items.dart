import 'package:flutter/material.dart';
import 'package:tune_app/models/items_model.dart';

class Items extends StatelessWidget {
  const Items({
    required this.tune,
  });

  final ItemsModel tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
