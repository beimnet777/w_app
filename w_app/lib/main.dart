import 'package:flutter/material.dart';
import 'package:w_app/pages/coffee.dart';
import 'package:w_app/pages/home.dart';
import 'package:w_app/pages/loading.dart';
import 'package:w_app/pages/location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => const Coffee(),
      "/home": (context) => const Home(),
      "/loc": (context) => const Location()
    },
  ));
}
