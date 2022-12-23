import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Future getData() async {
    String name =
        await Future.delayed(const Duration(seconds: 2), (() => "beimnet"));
    Response data =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
    print(name);
    print(jsonDecode(data.body));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("loading"),
        centerTitle: true,
      ),
    );
  }
}
