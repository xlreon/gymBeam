import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
class GoogleMap {

  String location = "";

  GoogleMap({this.location});
  List latlng = [];

  Future<List> getLatLon() async {
    var response = await http.get(
      Uri.encodeFull("https://maps.googleapis.com/maps/api/place/textsearch/json?query="+location+"&key=AIzaSyC9jm_pnPdh6pvmleTRDLruFgmbb_L_mqs"),
    );
    var data = JSON.decode(response.body);
    latlng.add(data["results"][0]["geometry"]["location"]["lat"]);
    latlng.add(data["results"][0]["geometry"]["location"]["lng"]);
    return latlng;
  }
}