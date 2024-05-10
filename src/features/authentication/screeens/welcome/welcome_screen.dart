import 'package:first_app/src/constants/image_strings.dart';
import 'package:first_app/src/constants/text_strings.dart';
import 'package:first_app/src/features/authentication/screeens/login/login_screeen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        //backgroundColor: Colors.red.shade500,
        /* appBar: AppBar(
          //1-mavi kısmı oluşturduk üstteki appbar yani
          title: const Text('SAĞLIK BİLİMLERİ ÜNİVERSİTESİ'),
          backgroundColor: Colors
              .red.shade900, //2-burası da appbarın titleını belirlemek için
        ), */
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(tWelcomeScreenImage), height: height * 0.5),
          Column(
            children: [
              Text(
                tWelcomeTitle,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontFamily: "Kanit"),
              ),
              Text(
                tWelcomeSubtitle,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontFamily: "Kanit"),
              ),
            ],
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: Text(tLogin.toUpperCase()),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(tSignup.toUpperCase()),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
} 

/* class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
//const EdgeInsets.all(tDefaultSize)

    return Scaffold(
      backgroundColor: isDarkMode ? tSeconsaryColor : tPrimaryColor,
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
                image: const AssetImage(tWelcomeScreenImage),
                height: height * 0.6),
            Column(
              children: [
                Text(tWelcomeTitle,
                    style: Theme.of(context).textTheme.headline3),
                    
                Text(tWelcomeSubtitle,
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(tLogin.toUpperCase()),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(tSignup.toUpperCase()),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
 */