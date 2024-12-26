import 'package:flutter/material.dart';

import 'widget/homeScreen.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: HomeScrean()),
    );
  }
}
