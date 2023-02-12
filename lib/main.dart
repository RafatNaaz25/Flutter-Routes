// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:routes_flutter/app_screens/Named_routes/named.dart';
import 'package:routes_flutter/app_screens/Named_routes/named1.dart';

import 'app_screens/Parsing_arguments/screen1.dart';
import 'app_screens/Parsing_arguments/screen2.dart';
import 'app_screens/routes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {'/': (context) => MyApp5(), '/second': (context) => MyApp6()},
  ));
}
