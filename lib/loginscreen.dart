import 'package:delivery_app/createaccount.dart';
import 'package:delivery_app/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'contrants.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({Key key}) : super(key: key);
  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  String email, password;

  void signin(BuildContext context) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .catchError((onError) {})
        .then((authUser) {
      if (authUser.user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => home()));
      }
    });
  }

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.asset(
                      bglog,
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.42,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [
                            0.3,
                            0.8
                          ],
                              colors: [
                            Colors.transparent,
                            Colors.white,
                          ])),
                    ),
                    Positioned(
                        bottom: 1,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: appname + " \n",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              TextSpan(
                                  text: slogon,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black)),
                            ]),
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 15),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: Colors.green.shade800, width: 5)),
                          gradient: LinearGradient(colors: [
                            Colors.green.shade500.withOpacity(0.5),
                            Colors.transparent,
                          ])),
                      child: Text(
                        "   LOGIN",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (value) {
                      email = value;
                    },
                    validator: (Email) {
                      if (Email.isEmpty)
                        return "please enter the email";
                      else if (RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$')
                          .hasMatch(Email))
                        return "Please check your email";
                      else
                        return null;
                    },
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green.shade800),
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.green.shade800,
                      ),
                      labelText: "Enter the Email",
                      labelStyle: TextStyle(color: Colors.green.shade800),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    onSaved: (value) {
                      password = value;
                    },
                    validator: (Password) {
                      if (Password.isEmpty)
                        return "please enter the password";
                      else if (Password.length < 8 || Password.length > 15)
                        return "Please check your password lenght";
                      else
                        return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green.shade800),
                      ),
                      prefixIcon: Icon(
                        Icons.lock_open,
                        color: Colors.green.shade800,
                      ),
                      labelText: "Enter the Password",
                      labelStyle: TextStyle(color: Colors.green.shade800),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: FlatButton(
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                        },
                        child: Text("Forgot Password ?"))),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 48,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          onPressed: () {
                            if (formkey.currentState.validate()) {
                              formkey.currentState.save();
                              signin(context);
                            }
                          },
                          color: Colors.green.shade800,
                          child: Text(
                            "Login to Account",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                    )),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 40.0),
                      child: Text(
                        "Don't have a account?",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => createaccount()));
                        },
                        child: Text(
                          "Create a Account",
                          style: TextStyle(
                              fontSize: 17, color: Colors.green.shade800),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
