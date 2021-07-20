import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'loginscreen.dart';

import 'contrants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(new Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loginscreen(),
      title: appname,
      debugShowCheckedModeBanner: false,
    );
  }
}
