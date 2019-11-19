import 'package:flutter/material.dart';
import 'package:gskedu/Pages/parentlogin.dart';
import 'package:gskedu/Pages/loginandregister.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginAndRegister(),
    );
  }
}


