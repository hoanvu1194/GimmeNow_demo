import 'package:gimmenow_demo/app_routes.dart';
import 'package:gimmenow_demo/controllers/bindings/controllers_bindings.dart';
import 'package:gimmenow_demo/pages/loading_page.dart';
import 'package:gimmenow_demo/services/amplify_service.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _amplifyConfigured = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _configureAmplify();
    });
  }

  void _configureAmplify() async {
    await AmplifyService.configureAmplify();
    try {
      setState(() {
        _amplifyConfigured = true;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllersBindings(),
      title: 'ToDo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: _amplifyConfigured ? LoadingPage() : _waitForAmplify(),
      getPages: AppRoutes.routes,
    );
  }

  Scaffold _waitForAmplify() {
    return Scaffold(
      body: Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
