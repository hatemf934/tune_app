import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ItemsModel {
  final String sound;
  final Color color;

  const ItemsModel({required this.color, required this.sound});

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
