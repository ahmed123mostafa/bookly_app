import 'package:flutter/material.dart';
import 'package:kk/feature/splach/presentation/views_model/views/widget/splach_view_body.dart';

class SplachScrean extends StatelessWidget {
  const SplachScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff100B20),
      body: Splachviewbody(),
    );
  }
}
