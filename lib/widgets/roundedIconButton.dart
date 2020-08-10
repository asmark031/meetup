import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData iconLabel;
  final double iconSize;
  final double borderWidth;

  const RoundedIconButton(
      {Key key, this.iconLabel, this.iconSize, this.borderWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
              color: Theme.of(context).primaryColor, width: borderWidth)),
      child: IconButton(
          icon: Icon(
            iconLabel,
          ),
          iconSize: iconSize,
          // iconSize: 40.0,
          color: Theme.of(context).primaryColor,
          onPressed: () {}),
    );
  }
}
