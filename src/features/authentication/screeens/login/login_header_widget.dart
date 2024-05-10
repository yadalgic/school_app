//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';
import 'login_form_widget.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image(
              image: const AssetImage(tSplashImage), height: height * 0.15),
        ),
        const SizedBox(height: 10),
        const Text(
          tLoginTitle,
          style: TextStyle(
            //color: Colors.black, // Kırmızı rengi seçiyoruz
            fontSize: 30, // Metin boyutu (isteğe bağlı)
            //fontWeight: FontWeight.bold, // Kalın metin (isteğe bağlı)

            // Diğer metin stilleri (isteğe bağlı)
          ),
        ),
        //Text(tLoginSubtitle, style: Theme.of(context).textTheme.bodyText1),
        LoginForm(),
      ],
    );
  }
}
