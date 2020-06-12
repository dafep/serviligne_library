import 'dart:async';
import "package:connectivity/connectivity.dart";

class Internet {
  static StreamSubscription internetStream;
  static bool isConnected = false;

  static bool status() {
    internetStream = Connectivity().onConnectivityChanged.listen((status) {
      if (status == ConnectivityResult.mobile || status == ConnectivityResult.wifi) {
        print("yes");
        isConnected = true;
      } else {
        print("no");
        isConnected = false;
      }
    });
    return isConnected;
  }

  static close() {
    internetStream.cancel();
  }
}