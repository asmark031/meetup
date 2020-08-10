import 'package:flutter/material.dart';

import './widgets/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeApp(),
      theme: ThemeData(
        primaryColor: Colors.pinkAccent,
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        primary: true,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {}),
        title: Text(
          "Meetup",
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            height: 900,
            child: Stack(
              alignment: Alignment.topCenter,
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                  top: 440,
                  child: CardTemplate(
                    title: "Easy And Gentle Yoga",
                    time: "Today 9:00 PM",
                    titleTextColor: Colors.white,
                    backgroundColor: Colors.pink[200],
                    bottomLeftRadius: 0,
                    widget: Container(
                      child: Center(
                        child: RaisedButton(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            color: Colors.pink[100],
                            textColor: Colors.white,
                            onPressed: () {},
                            child: Text("You are going!")),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  top: 240,
                  child: CardTemplate(
                    bottomLeftRadius: 60,
                    titleTextColor: Colors.white,
                    title: "Practice French, English and Chinese",
                    time: "Today 8:00 PM",
                    backgroundColor: Colors.pink[100],
                    widget: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedIconButton(
                            iconLabel: Icons.cancel,
                            iconSize: 30.0,
                            borderWidth: 4,
                          ),
                          RoundedIconButton(
                            iconLabel: Icons.assignment_turned_in,
                            iconSize: 30.0,
                            borderWidth: 4,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  top: 40,
                  child: CardTemplate(
                    title: "Yoga and Meditation for Beginners",
                    time: "Today 6:00 PM",
                    titleTextColor: Theme.of(context).primaryColor,
                    bottomLeftRadius: 60,
                    backgroundColor: Colors.pink[50],
                    widget: Container(
                      width: 300,
                      height: 40,
                      child: Stack(
                        alignment: Alignment.centerRight,
                        fit: StackFit.loose,
                        children: [
                          Positioned.fill(
                            right: 160,
                            child: CircleAvatar(
                              backgroundColor: Colors.green[50],
                            ),
                          ),
                          Positioned.fill(
                            right: 120,
                            child: CircleAvatar(
                              backgroundColor: Colors.green[100],
                            ),
                          ),
                          Positioned.fill(
                            right: 80,
                            child: CircleAvatar(
                              // radius: 10,
                              backgroundColor: Colors.green[200],
                            ),
                          ),
                          Positioned.fill(
                            right: 40,
                            child: CircleAvatar(
                              backgroundColor: Colors.green[300],
                            ),
                          ),
                          Positioned.fill(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                            ),
                          ),
                          Text(
                            "Marie and 4 others",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: MusicControls(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
