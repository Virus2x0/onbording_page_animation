import 'package:animation_in_boarding/constants.dart';
import 'package:flutter/material.dart';

class CommunityDarkCardContent extends StatelessWidget {
  const CommunityDarkCardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: kPaddingl),
          child: Icon(
            Icons.brush,
            color: kWhite,
            size: 32,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: kPaddingl),
          child: Icon(
            Icons.camera_alt,
            color: kWhite,
            size: 32,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: kPaddingl),
          child: Icon(
            Icons.straight,
            color: kWhite,
            size: 32,
          ),
        ),
      ],
    );
  }
}
