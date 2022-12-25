import 'package:flutter/material.dart';

import '../world_time.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List<WorldTime> locations = [
    WorldTime(
        url: 'Africa/Addis_Ababa',
        location: 'Addis Ababa',
        flag: 'Ethiopia.png'),
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'germany.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'us.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'us.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  Future<void> getNewTime(index) async {
    WorldTime curWorldTime = locations[index];
    await curWorldTime.getTime();
    Map data = {
      "time": curWorldTime.time,
      "location": curWorldTime.location,
      "isDayTime": curWorldTime.isDayTime
    };
    // ignore: use_build_context_synchronously
    Navigator.pop(context, data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Location"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    getNewTime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/${locations[index].flag}")),
                ),
              ),
            );
          }),
    );
  }
}
