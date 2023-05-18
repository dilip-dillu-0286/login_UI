import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fluttertoast/fluttertoast.dart';

class signup extends StatefulWidget {
  bool isAllowedTOGoNext = true;

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  String? Email;
  String? password;
  String? Conformpassword;

  final numbers = <int>[1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 255),
              child: Text(
                "signup",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text(
                "Firstname",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 6,
                          offset: Offset(3, 3))
                    ],
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade300),
                child: TextField(
                  decoration: InputDecoration(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text(
                "Lastname",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 6,
                          offset: Offset(3, 3))
                    ],
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade300),
                child: TextField(
                  decoration: InputDecoration(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 280),
              child: Text(
                "Email",
                style: TextStyle(fontSize: 20),
              ),
            ),
            // SizedBox(
            //   height: 1,
            // ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 6,
                          offset: Offset(3, 3))
                    ],
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade300),
                child: TextField(
                  onChanged: (value) => Email = value,
                  obscureText: true,
                  decoration: InputDecoration(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text(
                "password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade300,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(3, 3))
                    ]),
                child: TextField(
                  onChanged: (value) => password = value,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "password recqired minimum 8 characters"),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 187),
              child: Text(
                "Conformpassword",
                style: TextStyle(fontSize: 22),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 6,
                          offset: Offset(3, 3))
                    ],
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade300),
                child: TextField(
                  onChanged: (value) => Conformpassword = value,
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Re-type"),
                ),
              ),
            ),

            RawMaterialButton(
              onPressed: () {
                (Email == "" || password == "" || Conformpassword == ""
                    ? Fluttertoast.showToast(msg: "please enter all details")
                    : Conformpassword != password
                        ? Fluttertoast.showToast(
                            msg: "please enter same password")
                        : Navigator.pushNamed(context, '/login'));
              },
              fillColor: Colors.green,
              child: Text(
                "submit",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
