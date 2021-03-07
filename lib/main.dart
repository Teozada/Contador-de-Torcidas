import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Contador de Pessoas", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = "Torcida do Botafogo";

  void _changePeople(int delta) {
    setState(() {
      _people += delta;

      if (_people < 0) {
        _infoText = "Torcida do Cruzeiro daqui a alguns anos!!";
      } else if (_people <= 4000) {
        _infoText = "Torcida do Botafogo!!";
      } else if (_people <= 7000) {
        _infoText = "Torcida do Santos!!";
      } else if (_people <= 10000) {
        _infoText = "Torcida do Galinho!!";
      } else if (_people <= 20000) {
        _infoText = "Torcida do Villa!!";
      } else {
        _infoText = "Torcida do Pomeras!!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/palmeiras-allianz-parque.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Pessoas: $_people",
                style: TextStyle(
                  color: Colors.green,
                  fontStyle: FontStyle.italic,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    child: Text(
                      "+ 1000",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _changePeople(1000);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    child: Text(
                      "- 1000",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _changePeople(-1000);
                    },
                  ),
                ),
              ],
            ),
            Text(
              _infoText,
              style: TextStyle(
                color: Colors.green,
                fontStyle: FontStyle.italic,
                fontSize: 30.0,
              ),
            )
          ],
        )
      ],
    );
  }
}
