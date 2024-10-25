import 'package:facts_api/models/homescreen_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomescreenController with ChangeNotifier {
  List<Datum>? data = [];
  homescreenmodel? obj;
  bool isLoading = false;

  Future<void> getfacts() async {
    var url = Uri.parse("https://catfact.ninja/facts");
    isLoading = true;
    notifyListeners();

    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        obj = welcomeFromJson(response.body);
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
