import 'package:flutter/material.dart';

class AudioIcon extends StatelessWidget {
  final bool isSelected;
  AudioIcon({this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.0,
      height: 48.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Colors.deepPurple[300],
              Colors.lightBlue[500],
              Colors.lightBlue[500],
              Colors.lightBlue[200],
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Icon(Icons.volume_up,
          size: 30.0, color: isSelected ? Colors.white : Colors.white30),
    );
  }
}
