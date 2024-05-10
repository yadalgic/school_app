//import 'package:first_app/src/constants/image_strings.dart';
//import 'package:first_app/src/constants/image_strings.dart';
//import 'package:first_app/src/common_widgets/form/form_header_widget.dart';
//import 'package:first_app/src/constants/image_strings.dart';
import 'package:first_app/src/constants/sizes.dart';
//import 'package:first_app/src/constants/text_strings.dart';
//import 'package:first_app/src/features/authentication/screeens/login/login_form_widget.dart';
//import 'package:first_app/src/constants/text_strings.dart';
//import 'package:first_app/src/features/authentication/screeens/login/login_form_widget.dart';
//import 'package:first_app/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

//import 'login_form_widget.dart';
import 'login_footer_widget.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LoginHeaderWidget(height: height),
                  LoginFooterWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
