import 'dart:async';
import "package:connectivity/connectivity.dart";

class Internet {
  static StreamSubscription internetStream;

  static status() {
    internetStream = Connectivity().onConnectivityChanged.listen((status) {
      if (status == ConnectivityResult.mobile || status == ConnectivityResult.wifi) {
        print("yes");
        return true;
      } else {
        print("no");
        return false;
      }
    });
  }

  static close() {
    internetStream.cancel();
  }
}