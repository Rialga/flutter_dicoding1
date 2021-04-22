import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        //TULISAN FARM HOUSE RIALGA
        Container(
          margin: EdgeInsets.only(top: 16.0),
          child: Text(
            'Farm House Balap Liar',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        //ICON - ICON
        Container(
          margin: EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.calendar_today),
                  SizedBox(height: 8.0),
                  Text('Open Everyday'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.access_time),
                  SizedBox(height: 8.0),
                  Text('09.00-20.00'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.monetization_on),
                  SizedBox(height: 8.0),
                  Text('Rp 25.000'),
                ],
              )
            ],
          ),
        ),

        //TEXT DESKRIPSI
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ],
    );
  }
}
