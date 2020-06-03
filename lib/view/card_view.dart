import 'package:flutter/material.dart';
import 'package:mywidget/core/constans.dart';

class CardDemoView extends StatefulWidget {
  @override
  _MyCardViewState createState() => _MyCardViewState();
}

class _MyCardViewState extends State<CardDemoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey[300], width: 1)),
            child: Text(kMessage),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue, width: 1)),
            child: Text(
              kMessage,
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.red[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              kMessage,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(
                "The Card Title",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                kMessage,
                style: TextStyle(color: Colors.white60),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: const EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withAlpha(50),
                    offset: const Offset(1, 4),
                    blurRadius: 5,
                  ),
                ]),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF32D57A),
              ),
              child: Text(
                kMessage,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withAlpha(50),
                    offset: const Offset(1, 4),
                    blurRadius: 5,
                  ),
                ]),
            child: Text(kMessage),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(bannerUrl), fit: BoxFit.cover)),
            child: Text(
              kMessage + kMessage,
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey[300], width: 1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: 110,
                  child: Image.asset(
                    bannerUrl2,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    kMessage,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(height: 16),
                  const ListTile(
                    leading: Icon(
                      Icons.album,
                      size: 56,
                    ),
                    title: Text('The Enchanted Nightingale'),
                    subtitle:
                        Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('BUY TICKETS'),
                        onPressed: () {},
                      ),
                      FlatButton(
                        child: const Text('LISTEN'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
