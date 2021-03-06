import 'package:animation_in_boarding/constants.dart';
import 'package:flutter/material.dart';

import 'logo.dart';

class Header extends StatelessWidget {
  // final VoidCallback onSkip;
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Logo(color: kWhite, size: 32.0),
      GestureDetector(
          onTap: null,
          child: Text(
            "Skip",
            style:
                Theme.of(context).textTheme.subtitle1?.copyWith(color: kWhite),
          ))
    ]);
  }
}
