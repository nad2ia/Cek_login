import 'package:flutter/material.dart';
import 'secondpage.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  //const myApp({ key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final String name = "Nadia Ramadhani";
    TextEditingController textfortosend = TextEditingController();
    return Material(
      initialRouter: '/secondpage',
      routes: {
        '/secondpage' :(context) => SecondPage(textfromController: name, textfromTextField: textfortosend.text),
      },

      home:Scaffold(
        appBar: AppBar(title: Text("Navigation Router"),),
        body: Builder(builder: (context)=> Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: textfortosend,
                textAlign: TextAlign.center,
                decoration: InputDecoration(border: InputBorder.none, hintText: "Isi Disini"),
              ),
              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
              },
              color: Colors.blue,
              child: Text("Pergi ke Halaman 2", style: TextStyle(color: Colors.white))),
           
            ],
          ),
        )),
      ),
    );
  }
}

