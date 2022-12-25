import 'package:flutter/material.dart';
import 'package:w_app/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = "loading";
  Future getData() async {
    // ignore: non_constant_identifier_names
    WorldTime Time =
        WorldTime(flag: "the", url: "Europe/Berlin", location: "berlin");

    await Time.getTime();
    time = Time.time as String;
    Map data = {
      "time": time,
      "location": "berlin",
      "isDayTime": Time.isDayTime
    };
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, "/home", arguments: data);
  }

  @override
  initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: const SafeArea(
          child: SpinKitWave(
        color: Colors.white,
        size: 50.0,
      )),
    );
  }
}
