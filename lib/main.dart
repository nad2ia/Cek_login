import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Flutter - Nadia Ramadhani")),
        body: Container(
            color: Colors.black26,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  height: 200,
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Text(
                    "Belajar Flutter Nadia Ramadhani - STTB",
                    textAlign: TextAlign.center,
                  ),
                ),
                IntrinsicHeight(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: Container(
                          color: Colors.orange,
                          height: 150,
                        )),
                        Expanded(
                            child: Container(
                          color: Colors.green,
                        ))
                      ]),
                ),
              ],
            )),
      ),
    );
  }
}
