import 'package:animation_in_boarding/constants.dart';
import 'package:flutter/material.dart';

class NextPageButton extends StatelessWidget {
  final VoidCallback onPressed;
  const NextPageButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
        padding: EdgeInsets.all(kPaddingM),
        elevation: 0,
        shape: CircleBorder(),
        fillColor: kWhite,
        child: Icon(Icons.arrow_forward, size: 32.0, color: kBlue));
  }
}
