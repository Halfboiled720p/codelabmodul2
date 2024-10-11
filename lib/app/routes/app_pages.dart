import 'package:get/get.dart';
import 'package:your_app/app/modules/articles/articles_view.dart';
import 'package:your_app/app/modules/webview/webview_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.ARTICLES,
      page: () => ArticlesView(),
    ),
    GetPage(
      name: Routes.WEBVIEW,
      page: () => WebviewView(),
    ),
  ];
}
