import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

List quotes = [
  Quote(
      quote:
          "I'm not a great programmer; I'm just a good programmer with great habits.",
      author: "Kent Beck"),
  Quote(
      quote:
          "Programming is not about what you have in your hands, but about what you are able to do with what you have in your hands.",
      author: "Peter Seibel"),
  Quote(
      quote:
          "I'm not a great programmer; I'm just a good programmer with great habits.",
      author: "Kent Beck"),
  Quote(
      quote:
          "Programming is not about what you have in your hands, but about what you are able to do with what you have in your hands.",
      author: "Peter Seibel"),
  Quote(
      quote:
          "I'm not a great programmer; I'm just a good programmer with great habits.",
      author: "someone")
];

class Quote {
  String quote;
  String author;
  Quote({required this.quote, required this.author});
}

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function Delete;
  QuoteCard({required this.quote, required this.Delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: <Widget>[
          Text(quote.quote),
          Text(quote.author),
          TextButton.icon(
            label : Text("Delete"),
            icon: Icon(Icons.delete),
            onPressed: () {
              Delete();
            
            },
          )
        ]),
      ),
    );
  }
}
