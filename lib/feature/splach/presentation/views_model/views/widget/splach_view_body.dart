import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/assets.dart';

class Splachviewbody extends StatefulWidget {
  const Splachviewbody({super.key});

  @override
  State<Splachviewbody> createState() => _SplachviewbodyState();
}

class _SplachviewbodyState extends State<Splachviewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidinganimation =
        Tween<Offset>(begin: const Offset(0, 7), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 5), () {
      GoRouter.of(context).push(AppRouter.KHomeView);
    });
  }

  @override
  // ignore: unnecessary_overrides
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Lottie.network(
            "https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json",
            width: 100,
            height: 100),
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 7,
        ),
        AnimatedBuilder(
            animation: slidinganimation,
            builder: (context, _) {
              return SlideTransition(
                position: slidinganimation,
                child: const Text(
                  "lets read a free books",
                  textAlign: TextAlign.center,
                ),
              );
            })
      ],
    );
  }
}
