import 'package:gimmenow_demo/controllers/auth_controller.dart';
import 'package:gimmenow_demo/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetWidget<UserController> {
  AuthController _authcontroller = Get.find();

  get kTransparentImage => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE1E5E4),
        appBar: AppBar(
          title: GetX<UserController>(
            initState: (_) async {
              await Get.find<UserController>().getCurrentUser();
            },
            builder: (_) {
              return Text(controller.user?.email ?? '',
                  style: TextStyle(fontSize: 12));
            },
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                _authcontroller.signOut();
              },
            ),
          ],
        ),

        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 8,
              ),
              Text(
                "Insert map here",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ));
  }
}
