import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:http/http.dart';

class WorldTime {
  String location;
  String url;
  String flag;
  String? time;
  bool? isDayTime;
  WorldTime({required this.url, required this.location, required this.flag});
  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));

      Map data = jsonDecode(response.body);

      DateTime now = DateTime.parse(data['datetime']!);
      String offset = data['utc_offset'].substring(1, 3);
      now = now.add(Duration(hours: int.parse(offset)));

      time = DateFormat.jm().format(now);
      isDayTime = now.hour >= 5 && now.hour < 20;
    } catch (e) {
      time = "unable to load data";
    }
  }
}
