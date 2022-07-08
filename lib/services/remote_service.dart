import 'dart:convert';

import 'package:state_management_provider/model/socer_list.model.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<SocerListModel?> getSocerListData() async {
    var client = http.Client();

    var uri =
        Uri.parse("https://livescore6.p.rapidapi.com/matches/v2/list-live");

    var response = await client.get(uri, headers: {
      "Content-Type": "application/json; charset=UTF-8",
      "X-RapidAPI-Key": "7d175fffcfmshb9186ce8e7c9408p1df6c4jsn03147acc214c",
      "X-RapidAPI-Host": "livescore6.p.rapidapi.com",
    });

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      print(jsonResponse.toString());
      var socerListData = SocerListModel.fromJson(jsonResponse);
      return socerListData;
    }
    return null;
  }
}
