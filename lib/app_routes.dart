import 'package:gimmenow_demo/controllers/bindings/homepage_bindings.dart';
import 'package:gimmenow_demo/pages/email_sign_in_page.dart';
import 'package:gimmenow_demo/pages/home_page.dart';
import 'package:gimmenow_demo/pages/sign_in_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/home', page: () => HomePage(), binding: HomeBindings()),
    GetPage(
      name: '/emaillogin',
      page: () => EmailSignInPage(),
    ),
    GetPage(
      name: '/signin',
      page: () => SignInPage(),
    ),
  ];
}
