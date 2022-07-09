import 'package:animation_in_boarding/constants.dart';
import 'package:animation_in_boarding/widgets/icon_container.dart';
import 'package:animation_in_boarding/widgets/text_column.dart';
import 'package:flutter/material.dart';

class CommunityLightCardContent extends StatelessWidget {
  const CommunityLightCardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconContainer(icon: Icons.person, padding: kPaddingS),
        IconContainer(icon: Icons.group, padding: kPaddingM),
        IconContainer(icon: Icons.insert_emoticon, padding: kPaddingS),
      ],
    );
  }
}

class CommunityTextColumn extends StatelessWidget {
  const CommunityTextColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextColumn(
        title: "Community", text: "sdhs sdhsdhd sdhsdajhdasjd hasdkajdha dj");
  }
}
