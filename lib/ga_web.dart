import 'package:ga_web_not_mobile/ga.dart';
import 'package:js/js.dart';

// use send navigation js events from web/app.js
@JS('sendNavigation')
external void sendNavigation(String routeName);

class GAWeb implements GoogleAnalytics {
  @override
  sendNewRouteData(String route) {
    sendNavigation(route);
  }
}

GoogleAnalytics getGA() => GAWeb();
