import 'package:animation_in_boarding/constants.dart';
import 'package:animation_in_boarding/widgets/logo.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Logo(color: kBlue, size: 48.0),
          SizedBox(height: kSpaceM),
          Text(
            'Welcome to Bubble',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: kBlack, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kSpaceS),
          Text(
            'West ad donan aute ex  commo tempore prodent.',
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: kBlack.withOpacity(0.5)),
          )
        ],
      ),
    );
  }
}
