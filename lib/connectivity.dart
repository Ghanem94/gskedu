import 'package:connectivity/connectivity.dart';
import 'dart:async';




class CheckeConnection{
  static Future<bool> connect() async{
    var connectRes = await (Connectivity().checkConnectivity());
    if (connectRes == ConnectivityResult.mobile || connectRes == ConnectivityResult.wifi) {
      return true;
      
    }
    else{
      return false;
    }
  }
}