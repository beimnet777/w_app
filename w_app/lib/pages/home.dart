import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Text("The home page"),
        FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/loc");
          },
          child: const Icon(
            Icons.move_to_inbox,
            size: 30,
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/");
          },
          child: const Icon(
            Icons.move_to_inbox,
            size: 30,
          ),
        )
      ]),
    );
  }
}
