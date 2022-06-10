abstract class IRouteManager {
  Future<dynamic> page(String routeName, {Object? arguments});
  Future<dynamic> pageAndReplace(String routeName, {Object? arguments});
  Future<dynamic> pageAndRemoveUntil(String routeName, {Object? arguments});
  dynamic back({Object? arguments});
}
