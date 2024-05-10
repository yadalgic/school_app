//import 'package:first_app/src/constants/colors.dart';
import 'package:first_app/src/constants/image_strings.dart';
//import 'package:first_app/src/constants/sizes.dart';
//import 'package:first_app/src/constants/text_strings.dart';
import 'package:first_app/src/features/authentication/controllers/splash_screen_controller.dart';
//import 'package:first_app/src/features/authentication/screeens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    SplashScreenController.find.startAnimation();

    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 3600), //1600
              top: splashController.animate.value ? 80 : 0,
              left: splashController.animate.value ? 20 : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 3600), //1600
                opacity: splashController.animate.value ? 0 : 0,
                child: Image(
                  image: AssetImage(tSplashTopIcon),
                  width: splashController.animate.value ? 200 : 100,
                  height: splashController.animate.value ? 200 : 100,
                ),
              ),
            ),
          ),
          /* Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
              top: 60,
              left: splashController.animate.value ? tDefaultSize : -20,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tAppName,
                        style: Theme.of(context).textTheme.headlineSmall),
                    Text(tAppTagLine,
                        style: Theme.of(context).textTheme.displaySmall)
                  ],
                ),
              ),
            ),
          ), */
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              top: splashController.animate.value ? 30 : 0,
              bottom: splashController.animate.value ? 30 : 0,
              right: splashController.animate.value ? 40 : 0,
              left: splashController.animate.value ? 40 : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                opacity: splashController.animate.value ? 1 : 0,
                child: const Image(image: AssetImage(tSplashImage)),
              ),
            ),
          ),
          /* Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 200 : 0,
              right: tDefaultSize,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Container(
                  width: tSplashContainerSize,
                  height: tSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: tPrimaryColor,
                  ),
                ),
              ),
            ),
          ), */
        ],
      ),
    );
  }
}
