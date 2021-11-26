import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:icircles/reuse_widget.dart';
import 'package:icircles/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    final space = SizedBox(height: 50);
    return Scaffold(
      //add here background color. Adobe XD not working that why color not found.
      backgroundColor: Colors.grey[600],
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/1.png"),
                Divider(
                  color: Colors.yellow,
                  height: 36,
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Text("Welcome !",
                          style: TextStyle(fontSize: 35.0, color: Colors.blue)),
                      Text("Login to your account !",
                          style: TextStyle(fontSize: 25.0, color: Colors.yellow)),
                      reusesizebox(),
                      TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.yellow,
                              ),
                              // hintText: 'Email or Username',
                              label: Text('Email or Username'),
                              border: OutlineInputBorder())),
                      reusesizebox(),
                      TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.yellow,
                              ),
                              suffixIcon: Icon(
                                Icons.visibility,
                                color: Colors.yellow,
                              ),
                              label: Text('Password'),
                              border: OutlineInputBorder())),
                      reusesizebox(),
                      Container(
                          alignment: Alignment.centerRight,
                          child: Text("Forgotten Password?",
                              style: TextStyle(
                                fontSize: 25.0,
                              ))),
                      reusesizebox(),
                      Row(
                        children: [
                          Checkbox(
                            value: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value!;
                              });
                            },
                            activeColor: Colors.green,
                          ),
                          Text("Forgotten Password?", style: TextStyle()),
                        ],
                      ),
                      reusesizebox(),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Sign in"),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.yellow[500]),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              //side: BorderSide(color: Colors.red)
                            ))),
                      ),
                      reusesizebox(),
                      Row(children: <Widget>[

                        Expanded(
                          child: new Container(
                              margin:
                                  const EdgeInsets.only(left: 10.0, right: 20.0),
                              child: Divider(
                                color: Colors.yellow,
                                height: 36,
                              )),
                        ),



                        Text("Or sign in with"),

                      Expanded(
                          child: new Container(
                              margin:
                                  const EdgeInsets.only(left: 20.0, right: 10.0),
                              child: Divider(
                                color: Colors.yellow,
                                height: 36,
                              )),
                        ),
                      ]),
                      reusesizebox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(width: 2.0, color: Colors.yellow),
                              primary: Colors.grey,
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(15),
                            ),
                            child: Icon(
                              Icons.android_outlined,
                              color: Colors.yellow,
                              size: 15,
                            ),
                            onPressed: () {},
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(width: 2.0, color: Colors.yellow),
                              primary: Colors.grey,
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(15),
                            ),
                            child: Icon(
                              Icons.home,
                              color: Colors.yellow,
                              size: 15,
                            ),
                            onPressed: () {},
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(width: 2.0, color: Colors.yellow),
                              primary: Colors.grey,
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(15),
                            ),
                            child: Icon(
                              Icons.info,
                              color: Colors.yellow,
                              size: 15,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      reusesizebox(),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: <InlineSpan>[
                          TextSpan(
                              text: "Don't have an account?",
                              style: TextStyle(color: Colors.black87)),
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Signup()));
                                },
                              text: ' Sign up here',
                              style: TextStyle(
                                  color: Colors.yellow[800],
                                  fontWeight: FontWeight.normal)),
                        ]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
