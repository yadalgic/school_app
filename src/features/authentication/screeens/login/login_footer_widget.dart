import 'package:flutter/material.dart';

//import '../../../../constants/image_strings.dart';
//import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        /* const Text("OR"),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon:
                  const Image(image: AssetImage(tGoogleLogoImage), width: 30.0),
              onPressed: () {},
              label: const Text(tSignInWithGoogle)),
        ),
        const SizedBox(
          height: tFormHeight - 10,
        ), */
        TextButton(
            onPressed: () {},
            child: Text.rich(
              TextSpan(
                text: tDontHaveAnAccount,
                style: Theme.of(context).textTheme.bodyLarge,
                children: [
                  const WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10),
                    ), // 10 birim genişlikte sağa boşluk ekler
                  ),
                  TextSpan(
                    text: tSignup,
                    style: TextStyle(color: Colors.blue.shade900),
                  ),
                  const WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                    ), // 10 birim genişlikte sola boşluk ekler
                  ),
                  TextSpan(
                    text: tKullaniciSozlesmesi,
                    style: TextStyle(color: Colors.blue.shade900),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
