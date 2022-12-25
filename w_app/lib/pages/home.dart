import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            const SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/loc");
                  },
                  child: const Icon(
                    Icons.map,
                    size: 20,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                data["location"],
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
              ),
            ),
            Text(
              data["time"],
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
            ),
          ]),
        ),
      ),
    );
  }
}
