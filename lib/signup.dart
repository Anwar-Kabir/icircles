import 'package:flutter/material.dart';
import 'package:icircles/constants.dart';
import 'package:icircles/login.dart';
import 'package:icircles/globle_widget.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background_image.png"),
                //fit: BoxFit.fill,
              ),
            ),
            child: SafeArea(
              child: SingleChildScrollView(
                //add here background color. Adobe XD not working that why color not found.

                child: Column(
                  children: [
                    Stack(
                      children: [
                        /*Icon(Icons.home,size: 30.0,color: Colors.pink,),
                        Image.asset("assets/images/1.png"),*/

                        Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          //color: Colors.orangeAccent,
                          child: Image.asset("assets/images/logo.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 30,
                            //color: Colors.purple,
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Login()));
                                },
                                child: Image.asset(
                                    'assets/images/back_arrow.png')),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.yellow,
                      height: 36,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text("Welcome !",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.blue)),
                          Text("Creat your account !",
                              style: TextStyle(
                                  fontSize: 17.0, color: kTextFormBoxPer)),
                          reusesizebox(),
                          TextField(
                              decoration: InputDecoration(
                                  fillColor: kTextForm,
                                  filled: true,
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: kTextFormBoxPer,
                                  ),
                                  //hintText: 'Enter your First name',
                                  label: Text(
                                    'First name',
                                    style: TextStyle(
                                      color: kText,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: kbackground)
                                      // borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                                      //borderSide:  BorderSide(color: Colors.pink),
                                      ),
                                  border: OutlineInputBorder())),
                          reusesizebox(),
                          TextField(
                              decoration: InputDecoration(
                                  fillColor: kTextForm,
                                  filled: true,
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: kTextFormBoxPer,
                                  ),
                                  // hintText: 'Enter last name',
                                  label: Text(
                                    'Last name',
                                    style: TextStyle(
                                      color: kText,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: kbackground)
                                      // borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                                      //borderSide:  BorderSide(color: Colors.pink),
                                      ),
                                  border: OutlineInputBorder())),
                          reusesizebox(),
                          TextField(
                              decoration: InputDecoration(
                                  fillColor: kTextForm,
                                  filled: true,
                                  prefixIcon: Icon(
                                    Icons.mood,
                                    color: kTextFormBoxPer,
                                  ),
                                  // hintText: 'Enter your username',
                                  label: Text(
                                    'Username',
                                    style: TextStyle(
                                      color: kText,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: kbackground)
                                      // borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                                      //borderSide:  BorderSide(color: Colors.pink),
                                      ),
                                  border: OutlineInputBorder())),
                          reusesizebox(),
                          Container(
                              alignment: Alignment.centerRight,
                              child: Text("already in use",
                                  style: TextStyle(
                                      fontSize: 15.0, color: kTextFormBoxPer))),
                          reusesizebox(),
                          TextField(
                              decoration: InputDecoration(
                                  fillColor: kTextForm,
                                  filled: true,
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: kTextFormBoxPer,
                                  ),
                                  // hintText: 'Enter your Email',
                                  label: Text(
                                    'Email',
                                    style: TextStyle(
                                      color: kText,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: kbackground)
                                      // borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                                      //borderSide:  BorderSide(color: Colors.pink),
                                      ),
                                  border: OutlineInputBorder())),
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
                                  label: Text(
                                    'Password',
                                    style: TextStyle(
                                      color: kText,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: kbackground)
                                      // borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                                      //borderSide:  BorderSide(color: Colors.pink),
                                      ),
                                  border: OutlineInputBorder())),
                          reusesizebox(),
                          TextField(
                              decoration: InputDecoration(
                                  fillColor: kTextForm,
                                  filled: true,
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: kTextFormBoxPer,
                                  ),
                                  //suffixIcon: Icon(Icons.visibility ,color: Colors.yellow,),
                                  label: Text(
                                    'Confirm Password',
                                    style: TextStyle(
                                      color: kText,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: kbackground)
                                      // borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                                      //borderSide:  BorderSide(color: Colors.pink),
                                      ),
                                  border: OutlineInputBorder())),
                          reusesizebox(),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Sign up"),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.yellow[500]),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  //side: BorderSide(color: Colors.red)
                                ))),
                          ),
                          Row(children: <Widget>[
                            Expanded(
                              child: new Container(
                                  margin: const EdgeInsets.only(
                                      left: 10.0, right: 20.0),
                                  child: Divider(
                                    color: Colors.yellow,
                                    height: 36,
                                  )),
                            ),
                            Text(
                              "Or sign up with",
                              style: TextStyle(color: kText),
                            ),
                            Expanded(
                              child: new Container(
                                  margin: const EdgeInsets.only(
                                      left: 20.0, right: 10.0),
                                  child: Divider(
                                    color: Colors.yellow,
                                    height: 36,
                                  )),
                            ),
                          ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(
                                      width: 2.0, color: Colors.yellow),
                                  primary: kbackground,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15),
                                ),
                                child: Text(
                                  "G",
                                  style: TextStyle(
                                      fontSize: 15.0, color: kTextFormBoxPer),
                                ),
                                onPressed: () {},
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(
                                      width: 2.0, color: Colors.yellow),
                                  primary: kbackground,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15),
                                ),
                                child: Text(
                                  "f",
                                  style: TextStyle(
                                      fontSize: 15.0, color: kTextFormBoxPer),
                                ),
                                onPressed: () {},
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(
                                      width: 2.0, color: Colors.yellow),
                                  primary: kbackground,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15),
                                ),
                                child: Image.asset('assets/images/twitter.png'),
                                onPressed: () {},
                              ),
                            ],
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
      ),
    );
  }
}
