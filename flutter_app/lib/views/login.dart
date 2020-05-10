import 'package:flutter/material.dart';
import 'package:flutterapp/views/Viewall.dart';

class MyLogin extends StatelessWidget {
  TextEditingController logncontroller = TextEditingController();
  TextEditingController logpcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10),
            TextField(
              controller: logncontroller,
              decoration: new InputDecoration(
                  prefixIcon: Icon(Icons.perm_identity),
                  labelText: "Enter Name",
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(15.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(color: Colors.grey[800]),
                  //hintText: "enter roll number",
                  fillColor: Colors.white70),
            ),
            SizedBox(height: 10),
            TextField(
              controller: logpcontroller,
              decoration: new InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  labelText: "enter password",
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(15.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(color: Colors.grey[800]),
                  //hintText: "enter roll number",
                  fillColor: Colors.white70),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                var getusr=logncontroller.text;
                var getps=logpcontroller.text;
                if(getusr=="admin"&&getps=="12345")
                {
                print("logged in");
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Viewall()
                ));
                }
                else
                  {
                    print("invalid credential");
                  }
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15.0)),
                height: 50.0,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
