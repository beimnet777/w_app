import 'dart:js';

import 'package:flutter/material.dart';
import 'package:w_app/pages/home.dart';
import 'package:w_app/pages/loading.dart';
import 'package:w_app/pages/location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/home",
    routes: {
      "/": (context) => const Loading(),
      "/home": (context) => const Home(),
      "/loc": (context) => const Location()
    },
  ));
}
