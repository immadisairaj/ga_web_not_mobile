import 'package:ga_web_not_mobile/ga.dart';

class GAGeneral implements GoogleAnalytics {
  @override
  sendNewRouteData(String route) {
    throw UnsupportedError('Not supported other than web');
  }
}

GoogleAnalytics getGA() => GAGeneral();
