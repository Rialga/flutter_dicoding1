import 'package:flutter/material.dart';

import 'util.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Belajar',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: Text(
          'First Screen',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      // body: Center(
      //   child: PerubahanText(
      //     text: 'Hello World!',
      //   ),
      // ),
      //
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Center(
              child: Text(
                'Hello  World !',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: pastelCyan,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, offset: Offset(2, 3), blurRadius: 3)
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            width: 170,
            height: 100,
            margin: EdgeInsets.only(top: 20),
          ),
          Container(
            child: Center(
              child: Text(
                'Hello  World !',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: pastelCyan,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, offset: Offset(2, 3), blurRadius: 3)
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            width: 170,
            height: 100,
            margin: EdgeInsets.only(
              top: 20,
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

//Contoh statLess Widgt
class Heading extends StatelessWidget {
  final String text;

  Heading({Key key, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

// Contoh statefull widges
class PerubahanText extends StatefulWidget {
  final String text;

  const PerubahanText({Key key, this.text});

  @override
  _PerubahanTextState createState() => _PerubahanTextState();
}

class _PerubahanTextState extends State<PerubahanText> {
  double _ukuranText = 16.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _ukuranText)),
        RaisedButton(
          child: Text("Perbesar"),
          onPressed: () {
            setState(() {
              _ukuranText = 32.0;
            });
          },
        )
      ],
    );
  }
}
