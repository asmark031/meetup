import 'package:flutter/material.dart';

class CardTemplate extends StatelessWidget {
  final String time;
  final String title;
  final backgroundColor;
  final widget;
  final double bottomLeftRadius;
  final titleTextColor;

  const CardTemplate(
      {Key key,
      this.time,
      this.title,
      this.widget,
      this.backgroundColor,
      this.titleTextColor,
      this.bottomLeftRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(bottomLeftRadius),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                time,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 18,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  color: titleTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 8, 0, 40),
                child: widget,
              )
            ],
          ),
        ),
      ],
    );
  }
}
