import 'package:flutter/material.dart';
import 'package:login/signup.dart';
import 'package:fluttertoast/fluttertoast.dart';

bool visibility = true;

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String? Email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SafeArea(
                child: RawMaterialButton(
                  fillColor: Colors.grey.shade100,
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              // SizedBox(
              //   width: 20,
              // ),
              SafeArea(
                child: RawMaterialButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/signup');
                  },
                  fillColor: Colors.grey.shade100,
                  child: Text("signup"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Login",
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 220),
            child: Text(
              "Enter your mail",
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
                onChanged: (value) => Email = value,
                decoration: InputDecoration(hintText: "Email")),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 260),
            child: Text(
              "password",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              onChanged: (value) => password = value,
              obscureText: visibility,
              decoration: InputDecoration(
                  hintText: "password",
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        visibility = !visibility;
                      });
                    },
                    child: visibility == true
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RawMaterialButton(
            onPressed: () {
              (Email == null || password == null
                  ? Fluttertoast.showToast(msg: "please enter all details")
                  : Navigator.popAndPushNamed(context, '/signup'));
            },
            fillColor: Colors.orange,
            child: Text("Login"),
          )
        ],
      ),
    );
  }
}
