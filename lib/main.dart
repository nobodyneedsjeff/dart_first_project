import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:encryption_project/pages/home.dart';
import 'package:encryption_project/pages/decrypting.dart';
import 'package:encryption_project/pages/encrypting.dart';


void main() => runApp(MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.indigo,
  ),
   initialRoute: '/',
  routes:{
    '/': (context) => Home(),
    '/encrypting':(context) => Encrypting(),
    '/decrypting':(context)=> Decrypting(),
  }
));
