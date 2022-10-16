import 'package:gimmenow_demo/buttons_enum.dart';
import 'package:gimmenow_demo/controllers/auth_controller.dart';
import 'package:gimmenow_demo/widgets/sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GimmeNow'),
        elevation: 10,
      ),
      body: _buildContent(context),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            child: Text(
              'Sign In',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            height: 50.0,
          ),
          SizedBox(
            height: 48.0,
          ),
          SocialSignInButton(
            button: Buttons.Email,
            onPressed: () => Get.toNamed("/emaillogin"),
            color: Colors.deepOrange,
            text: 'Sign in with email',
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
