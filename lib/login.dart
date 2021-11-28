import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:icircles/constants.dart';
import 'package:icircles/globle_widget.dart';
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

    return Scaffold(
      //add here background color. Adobe XD not working that why color not found.
      backgroundColor: kbackground,
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage(
            "assets/images/background_image.png"),
   // fit: BoxFit.cover,
    ),
    ),



            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset("assets/images/logo.png"),
                  Divider(
                    color: Colors.yellow,
                    height: 36,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text("Welcome !",
                            style: TextStyle(fontSize: 20.0, color: Colors.blue)),
                        Text("Login to your account",
                            style: TextStyle(fontSize: 17.0, color: kTextFormBoxPer)),
                        reusesizebox(),
                        const TextField(
                            decoration: InputDecoration(
                                fillColor: kTextForm,
                                filled: true,
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: kTextFormBoxPer,
                                ),
                               // hintText: 'Email or Username',
                                label: Text('Email or Username',style: TextStyle(
                                  color: kText,
                                ),),

                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: kbackground)
                                  // borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                                  //borderSide:  BorderSide(color: Colors.pink),
                                ),

                                border: OutlineInputBorder(
                                 // borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                                  //borderSide:  BorderSide(color: Colors.pink),
                                ))),
                        reusesizebox(),
                        TextField(
                            decoration: InputDecoration(
                                fillColor: kTextForm,
                                filled: true,
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: kTextFormBoxPer,
                                ),
                                suffixIcon: Icon(
                                  Icons.visibility,
                                  color: kTextFormBoxPer,
                                ),
                                label: Text('Password', style: TextStyle(
                                  color: kText,),),

                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: kbackground)
                                  // borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                                  //borderSide:  BorderSide(color: Colors.pink),
                                ),

                                border: OutlineInputBorder())),
                        reusesizebox(),
                        Container(
                            alignment: Alignment.centerRight,
                            child: Text("Forgotten Password?",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: kText,
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
                              fillColor: MaterialStateProperty.all(kTextFormBoxPer),// kTextFormBoxPer,

                            ),
                            Text("Remember Me", style: TextStyle(
                              color: kText,
                            )),
                          ],
                        ),
                        reusesizebox(),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Sign in",style: TextStyle(
                            color: Colors.white.withOpacity(1.0)
                          ),),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(ksignupbutton),
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



                          Text("Or sign in with",style: TextStyle(color: kText),),

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
                                primary: kbackground,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(15),
                              ),
                              child: Text("G",style: TextStyle(
                                fontSize: 15.0,
                                color: kTextFormBoxPer
                              ),),


                              onPressed: () {},
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(width: 2.0, color: Colors.yellow),
                                primary: kbackground,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(15),
                              ),
                              child: Text("f",style: TextStyle(
                                  fontSize: 15.0,
                                  color: kTextFormBoxPer
                              ),),
                              onPressed: () {},
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(width: 2.0, color: Colors.yellow),
                                primary: kbackground,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(15),
                              ),
                              child:
                              Image.asset('assets/images/twitter.png'),

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
                                style: TextStyle(color: kText)),
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
                                    color: kTextFormBoxPer,
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
      ),
    );
  }
}
