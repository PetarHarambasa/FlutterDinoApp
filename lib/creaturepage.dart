import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'model/creature.dart';

AudioPlayer audioPlayer = AudioPlayer();

class CreaturePage extends StatelessWidget {
  // Make model of Creature for all this properties
  final Creature creature;
  const CreaturePage({
    super.key,
    required this.creature,
  });

  @override
  Widget build(BuildContext context) {
    playSound();
    return Scaffold(
        appBar: AppBar(
          title: Text(creature.creatureName.toString()),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            Text(creature.aboutCreature.toString()),
            Image.network(creature.urlImage.toString()),
            Text(
                'Create diet: ${creature.diet} Create temperament: ${creature.temperament}'),
            Text('Create groupType: ${creature.groupType}'),
          ],
        ));
  }

  Future<void> playSound() async {
    await audioPlayer.play(UrlSource(creature.audio.toString()));
  }
}
