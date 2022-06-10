import 'package:flutter/material.dart';
import 'package:path_project/core/keys/global_key.dart';
import 'package:path_project/core/route_manager/i_route_manager.dart';

class Go implements IRouteManager {
  static Go to = Go._init();
  Go._init();

  @override
  Future<dynamic> page(String routeName, {Object? arguments}) async {
    if (GlobalContextKey.instance.globalKey.currentState != null) {
      return await GlobalContextKey.instance.globalKey.currentState!
          .pushNamed(routeName, arguments: arguments);
    } else {
      currentStateNullError();
    }
  }

  @override
  Future<dynamic> pageAndReplace(String routeName, {Object? arguments}) async {
    if (GlobalContextKey.instance.globalKey.currentState != null) {
      return await GlobalContextKey.instance.globalKey.currentState!
          .pushReplacementNamed(routeName, arguments: arguments);
    } else {
      currentStateNullError();
    }
  }

  @override
  Future<dynamic> pageAndRemoveUntil(String routeName,
      {Object? arguments}) async {
    if (GlobalContextKey.instance.globalKey.currentState != null) {
      return await GlobalContextKey.instance.globalKey.currentState!
          .pushNamedAndRemoveUntil(routeName, (route) => false,
              arguments: arguments);
    } else {
      currentStateNullError();
    }
  }

  @override
  dynamic back({Object? arguments}) async {
    if (GlobalContextKey.instance.globalKey.currentState != null) {
      return GlobalContextKey.instance.globalKey.currentState!.pop(arguments);
    } else {
      currentStateNullError();
    }
  }

  void currentStateNullError() {
    debugPrint("GlobalKey.instance.currentState is null | route_manager.dart");
  }
}
