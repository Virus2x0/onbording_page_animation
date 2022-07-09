import 'package:animation_in_boarding/constants.dart';
import 'package:flutter/material.dart';

class TextColumn extends StatelessWidget {
  final String title;
  final String text;
  const TextColumn({Key? key, required this.title, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: kWhite, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: kSpaceS),
        Text(
          text,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(color: kWhite),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
