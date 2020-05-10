import 'package:flutter/material.dart';
import 'package:flutterapp/views/login.dart';

class Register extends StatelessWidget {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController admncontroller = TextEditingController();
  TextEditingController rollcontroller = TextEditingController();
  TextEditingController usercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.deepPurple, Colors.amber])),
      //color: Colors.deepPurple,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 200.0),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80.0),
                      topRight: Radius.circular(80.0))),
              height: MediaQuery.of(context).size.height - 200,
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 70.0),
                    TextField(
                      controller: namecontroller,
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
                    SizedBox(height: 9),
                    TextField(
                      controller: rollcontroller,
                      obscureText: true,
                      decoration: new InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          labelText: "enter rollnum",
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
                    SizedBox(height: 9),
                    TextField(
                      controller: admncontroller,
                      obscureText: true,
                      decoration: new InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          labelText: "enter admn num",
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
                    SizedBox(height: 9),
                    TextField(
                      controller: usercontroller,
                      obscureText: true,
                      decoration: new InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          labelText: "enter user name",
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
                    SizedBox(height: 9),
                    TextField(
                      controller: passcontroller,
                      obscureText: true,
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
                    SizedBox(
                      height: 9.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("hello");
                        var getName = namecontroller.text;
                        var getroll = rollcontroller.text;
                        var getadmn = admncontroller.text;
                        var getuser = usercontroller.text;
                        var getpass = passcontroller.text;
                        print(getName);
                        print(getroll);
                        print(getadmn);
                        print(getuser);
                        print(getpass);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15.0),
                            gradient: LinearGradient(
                                colors: [Colors.deepPurple, Colors.amber])),
                        height: 39.0,
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
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyLogin()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15.0),
                            gradient: LinearGradient(
                                colors: [Colors.deepPurple, Colors.amber])),
                        height: 39,
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            "back to login",
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
