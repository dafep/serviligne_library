import "package:connectivity/connectivity.dart";

class Internet {
  static status() {
    Connectivity().onConnectivityChanged.listen((status) {
      if (status == ConnectivityResult.mobile || status == ConnectivityResult.wifi)
        return true;
      else
        return false;
    });
  }
}