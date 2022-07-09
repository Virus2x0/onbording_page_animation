import 'package:animation_in_boarding/widgets/cart_stacked.dart';
import 'package:flutter/material.dart';

class OnbordingPage extends StatelessWidget {
  final int number;
  final Widget lightCardChild;
  final Widget darkCardChild;
  final Widget textColumn;

  const OnbordingPage(
      {Key? key,
      required this.number,
      required this.textColumn,
      required this.lightCardChild,
      required this.darkCardChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardsStack(
            pageNumber: number,
            lightCardChild: lightCardChild,
            darkCardChild: darkCardChild),
        SizedBox(height: number % 2 == 1 ? 50 : 25),
        textColumn
      ],
    );
  }
}
