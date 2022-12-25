import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data =
        data.isEmpty ? ModalRoute.of(context)?.settings.arguments as Map : data;
    String bgImage = data["isDayTime"] ? "assets/day.jpg" : "assets/night.jpg";
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            image:
                DecorationImage(image: AssetImage(bgImage), fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(children: [
              const SizedBox(
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: IconButton(
                    onPressed: () async {
                      dynamic result =
                          await Navigator.pushNamed(context, "/loc");
                      setState(() {
                        data = result;
                      });
                    },
                    icon: const Icon(
                      Icons.location_city,
                      size: 20,
                      color: Colors.white,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  data["location"],
                  style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
              ),
              Text(
                data["time"],
                style: const TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
