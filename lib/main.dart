import 'dart:async';
import 'package:catatan_siemak/auth/login_screen.dart';
import 'package:catatan_siemak/database.dart';
import 'package:catatan_siemak/detail_todo.dart';
import 'package:catatan_siemak/home/home_screen.dart';
import 'package:catatan_siemak/model_todo.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  welcomePage(){
    // if (spUtils.isLogin()) {
    //   return MyHomePage();
    // }else {
    //   return LoginScreen();
    // }
    return LoginScreen();
  }
  @override
  Widget build(BuildContext context) {
    welcomePage();
    return MaterialApp(
      title: 'Catatan si-emak',
      theme: ThemeData(
        primaryColor: Color(0xFF039CC9),
      ),
      home: Scaffold(
        body: welcomePage(),
      )
    );
  }
}

