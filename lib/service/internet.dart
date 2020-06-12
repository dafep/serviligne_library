import "package:connectivity/connectivity.dart";

class Internet {
  static bool isConnected = false;

  static bool status() {
    Connectivity().checkConnectivity().then((status) {
      if (status == ConnectivityResult.mobile || status == ConnectivityResult.wifi) {
        print("yes");
        return true;
      } else {
        print("no");
        return false;
      }
    });
    return isConnected;
  }
}