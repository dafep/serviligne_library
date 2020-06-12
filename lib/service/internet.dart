import 'dart:async';
import "package:connectivity/connectivity.dart";

class Internet {
  static StreamSubscription internetStream;

  static status() {
    internetStream = Connectivity().onConnectivityChanged.listen((status) {
      if (status == ConnectivityResult.mobile || status == ConnectivityResult.wifi)
        return true;
      else
        return false;
    });
  }

  static close() {
    internetStream.cancel();
  }
}