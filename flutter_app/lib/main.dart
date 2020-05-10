import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/views/login.dart';
import 'package:flutterapp/views/register.dart';

void main() {
  runApp(Devu());
}

class Devu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /*appBar: AppBar(
          leading: Icon(Icons.contact_phone),
          backgroundColor: Colors.blue,
          title: Text(
            "MBCET APP",
            style: TextStyle(fontSize: 20.0, letterSpacing: 2.0),
          ),
          centerTitle: true,
        ),*/
        body: Register()
      ),
    );
  }
}

