import 'package:animation_in_boarding/constants.dart';
import 'package:animation_in_boarding/screens/onboarding/onbording.dart';
import 'package:animation_in_boarding/screens/onboarding/pages/community/community_dark_card_content.dart';
import 'package:animation_in_boarding/screens/onboarding/pages/community/community_light_card_content.dart';
import 'package:animation_in_boarding/widgets/header.dart';
import 'package:animation_in_boarding/widgets/onbording_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Onboarding(),
    );
  }
}
