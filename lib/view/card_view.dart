import 'package:flutter/material.dart';
import 'package:mywidget/my_scaffold.dart';

class CardDemoView extends StatefulWidget {
  @override
  _MyCardViewState createState() => _MyCardViewState();
}

class _MyCardViewState extends State<CardDemoView> {
  final _defaultText =
      "Cras quis nulla commodo, aliquam lectus sed, blandit augue. Cras ullamcorper bibendum bibendum.";
  final _imageUrl =
      "https://firebasestorage.googleapis.com/v0/b/my-media-11881.appspot.com/o/banner%2Fbanner-5.jpg?alt=media&token=14a46027-e559-4e2c-a7de-853cda7add14";
  final _imageUrl2 =
      "https://firebasestorage.googleapis.com/v0/b/my-media-11881.appspot.com/o/banner%2Fmec.jpeg?alt=media&token=745ccc74-6d5f-410b-96b2-bd82505c59c5";

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      "Card view",
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey[300], width: 1)),
            child: Text(_defaultText),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue, width: 1)),
            child: Text(
              _defaultText,
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
              _defaultText,
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
                _defaultText,
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
                _defaultText,
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
            child: Text(_defaultText),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(_imageUrl2), fit: BoxFit.cover)),
            child: Text(
              _defaultText + _defaultText,
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
                  child: Image.network(
                    _imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _defaultText,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
