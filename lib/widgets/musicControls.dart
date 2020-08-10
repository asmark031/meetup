import 'package:flutter/material.dart';

import './index.dart';

class MusicControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(80),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RoundedIconButton(
                  borderWidth: 1, iconSize: 40, iconLabel: Icons.arrow_back),
              RoundedIconButton(
                  borderWidth: 1, iconSize: 40, iconLabel: Icons.music_note),
              RoundedIconButton(
                  borderWidth: 1, iconSize: 40, iconLabel: Icons.arrow_forward),
            ],
          ),
        ),
      ],
    );
  }
}
