import 'package:shared_preferences/shared_preferences.dart';

class Memory {
  static rememberMe({dynamic any}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    switch (any.runtimeType) {
      case int:
        print("a");
        break;
      case String:
        print("b");
        break;
      case Map:
        print("c");
        break;
      case double:
        print("d");
        break;
    }
  }

  static show({dynamic any}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    switch (any.runtimeType) {
      case int:
        print("a");
        break;
      case String:
        print("b");
        break;
      case Map:
        print("c");
        break;
      case double:
        print("d");
        break;
    }
  }

  static forgetMe({dynamic any}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    switch (any.runtimeType) {
      case int:
        print("a");
        break;
      case String:
        print("b");
        break;
      case Map:
        print("c");
        break;
      case double:
        print("d");
        break;
    }
  }
}