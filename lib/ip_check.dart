import "package:http/http.dart" as http;
import "dart:convert";
import "models/info.dart";

const stringUrl = "https://ipapi.co/json/";

Future <Info> getInfo() async {
  final url = Uri.parse(stringUrl);
  final res = await http.get(url);
  final Map<String, dynamic> data = json.decode(res.body);

  return Info(
    ip: data['ip'],
    region: data['region'],
    city: data['city'],
    postal_code: data['postal']);
}


