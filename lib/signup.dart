import 'package:flutter/material.dart';
import 'package:icircles/login.dart';
import 'package:icircles/reuse_widget.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
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
                      child: Image.asset("assets/images/1.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 30,
                        width: 30,
                       //color: Colors.purple,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 2.0, color: Colors.yellow),
                            primary: Colors.grey,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(15),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                        ),
                      ),
                    ),



                  ],
                ),


                Divider(
                  color: Colors.yellow,
                  height: 36,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text("Welcome !",
                          style: TextStyle(fontSize: 35.0, color: Colors.blue)),
                      Text("Creat your account !",
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
                              label: Text('First name'),
                              border: OutlineInputBorder())),
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
                              label: Text('Last name'),
                              border: OutlineInputBorder())),
                      reusesizebox(),
                      TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.mood,
                                color: Colors.yellow,
                              ),
                              // hintText: 'Email or Username',
                              label: Text('Username'),
                              border: OutlineInputBorder())),
                      reusesizebox(),
                      Container(
                          alignment: Alignment.centerRight,
                          child: Text("already in use",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.yellow[700]))),
                      reusesizebox(),
                      TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.yellow,
                              ),
                              // hintText: 'Email or Username',
                              label: Text('Email'),
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
                      TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.yellow,
                              ),
                              //suffixIcon: Icon(Icons.visibility ,color: Colors.yellow,),
                              label: Text('Confirm Password'),
                              border: OutlineInputBorder())),
                      reusesizebox(),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Sign up"),
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
                        Text("Or sign up with"),
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
