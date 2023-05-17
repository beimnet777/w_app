import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Coffee extends StatefulWidget {
  const Coffee({super.key});

  @override
  State<Coffee> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Coffee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          leading: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
            child: const Image(image: AssetImage("assets/germany.png")),
          ),
          title: const Text(
            "Arabica Armour",
            style: TextStyle(
                fontFamily: "verdana",
                fontWeight: FontWeight.w200,
                fontSize: 22),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(5),
              child: Icon(Icons.settings),
            )
          ],
        ),
        body: ListView.builder(
            itemCount: 6,
            itemBuilder: (BuildContext context, index) {
              return Card(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.14,
                        height: MediaQuery.of(context).size.width * 0.1,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/night.jpg"))),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Image Data Generation"),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("COFFEE"),
                            ],
                          )
                        ],
                      ),
                    )
                  ]));
            }),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.green[300],
            items: [
              BottomNavigationBarItem(
                  icon: const Icon(Icons.search),
                  activeIcon: const Icon(
                    Icons.search,
                    color: Colors.purple,
                  ),
                  label: "Search",
                  backgroundColor: Colors.amber[400]),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.camera),
                  label: "Camera",
                  activeIcon: const Icon(
                    Icons.camera,
                    color: Colors.purple,
                  ),
                  backgroundColor: Colors.amber[400]),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.settings),
                  label: "Setting",
                  activeIcon: const Icon(
                    Icons.search,
                    color: Colors.purple,
                  ),
                  backgroundColor: Colors.amber[400])
            ],
            currentIndex: 0));
  }
}
