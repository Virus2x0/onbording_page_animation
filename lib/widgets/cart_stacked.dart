import 'package:animation_in_boarding/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants.dart';

class CardsStack extends StatelessWidget {
  final int pageNumber;
  final Widget lightCardChild;
  final Widget darkCardChild;
  const CardsStack(
      {Key? key,
      required this.pageNumber,
      required this.lightCardChild,
      required this.darkCardChild})
      : super(key: key);

  bool get isOddPageNumber => pageNumber % 2 == 1;

  @override
  Widget build(BuildContext context) {
    var darkCardWidth = MediaQuery.of(context).size.width - 2 * kPaddingl;
    var darkCardHeight = MediaQuery.of(context).size.height / 3;

    return Padding(
      padding: EdgeInsets.only(
        top: isOddPageNumber ? 25 : 50,
      ),
      child: Stack(
        alignment: AlignmentDirectional.center,
        // overflow: OverFlow.visible, //!depriciated
        children: [
          //in stack added a card with dark blue (as background card)
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            color: kDarkBlue,
            child: Container(
              //size as per darkcardheight/width
              height: darkCardHeight,
              width: darkCardWidth,
              //for inside things of card
              child: Padding(
                //! experiment at padding!!!
                padding: EdgeInsets.only(
                    top: !isOddPageNumber ? 100 : 0,
                    bottom: isOddPageNumber ? 100 : 0),
                child: Center(
                  child: darkCardChild,
                ),
              ),
            ),
          ),
          Positioned(
            top: !isOddPageNumber ? -25.0 : null,
            bottom: isOddPageNumber ? -25 : null,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              color: kLightBlue,
              child: Container(
                width: darkCardWidth * 0.85,
                height: darkCardHeight * 0.5,
                child: Center(child: lightCardChild),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
