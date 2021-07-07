import 'package:flutter/widgets.dart';
import 'package:ui_ux/src/pages/onboard/onboard_page.dart';

import 'routes.dart';

//SE DEFINE LAS RUTAS DE LAS PAGINAS ONBOARD
abstract class Pages {
  static const String INITIAL = Routes.ONBOARD;
  static final Map<String, Widget Function(BuildContext)> routes = {
    Routes.ONBOARD: (_) => OnboardPage(),
  };
}
