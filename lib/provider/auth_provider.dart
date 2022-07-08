import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class AuthProvider with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool newValue) {
    _loading = newValue;
    notifyListeners();
  }

  //create a login function
  void userLogin(String email, password) async {
    setLoading(true);
    try {
      Response response = await http.post(
        Uri.parse("https://reqres.in/api/login"),
        body: {"email": email, "password": password},
      );

      if (response.statusCode == 200) {
        if (kDebugMode) {
          print("Login Successful");
          print(response.body.toString());
          setLoading(false);
        }
      } else {
        setLoading(false);
        if (kDebugMode) {
          print("Login Failed");
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
