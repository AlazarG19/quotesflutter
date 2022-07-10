import 'package:flutter/material.dart';
import 'quotes.dart';
void main() {
  runApp(Main());
}

class Main extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home : Home()
    );
  }
}
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title : Text("Quotes App",style : TextStyle(
          color : Colors.white
        )),
        centerTitle : true,
        backgroundColor: Colors.red[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: quotes.map((q) => QuoteCard(quote:Quote(quote: q.quote,author : q.author),Delete: (){
            print("dlete pressed");
            setState(() {
            quotes.remove(q);
          });},)).toList(),
        ),
      )
      );
  }
}