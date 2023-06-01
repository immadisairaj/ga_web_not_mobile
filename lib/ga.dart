import 'ga_general.dart' if (dart.library.js) 'ga_web.dart';

abstract class GoogleAnalytics {
  sendNewRouteData(String route);

  factory GoogleAnalytics() => getGA();
}
