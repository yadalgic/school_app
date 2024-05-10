import 'package:first_app/src/constants/sizes.dart';
import 'package:first_app/src/features/authentication/screeens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:first_app/src/features/authentication/screeens/forget_password/forget_password_phone/forget_password_phone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../constants/text_strings.dart';
import '../../login/login_form_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              tForgetPasswordTitle,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  //fontFamily: "Kanit",
                  ),
            ),
            /* Text(tForgetPasswordTtile,
                          style: Theme.of(context).textTheme.displaySmall), */
            Text(
              tForgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  //fontFamily: "Kanit",
                  ),
            ),
            const SizedBox(height: 30.0),
            ForgetPasswordBtnWidget(
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordMailScreen());
              },
              btnIcon: Icons.mail_outline_rounded,
              title: tEmail,
              subTtile: tResetViaEMail,
            ),
            const SizedBox(
              height: 20.0,
            ),
            ForgetPasswordBtnWidget(
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordPhoneScreen());
              },
              btnIcon: Icons.mobile_friendly_rounded,
              title: tPhoneNo,
              subTtile: tResetViaPhone,
            ),
          ],
        ),
      ),
    );
  }
}
