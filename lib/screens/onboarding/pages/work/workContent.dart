import 'package:animation_in_boarding/widgets/text_column.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../widgets/icon_container.dart';

class WorkDarkCardContent extends StatelessWidget {
  const WorkDarkCardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [Icon(Icons.person_pin, color: kWhite, size: 32.0)],
        ),
        const SizedBox(height: kSpaceM),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.person, color: kWhite, size: 32),
            Icon(Icons.group, color: kWhite, size: 32),
            Icon(Icons.insert_emoticon, color: kWhite, size: 32),
          ],
        )
      ],
    );
  }
}

class WorkLightCardContent extends StatelessWidget {
  const WorkLightCardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconContainer(
          icon: Icons.event_seat,
          padding: kPaddingS,
        ),
        IconContainer(
          icon: Icons.business_center,
          padding: kPaddingM,
        ),
        IconContainer(
          icon: Icons.assessment,
          padding: kPaddingS,
        ),
      ],
    );
  }
}

class WorkTextColumn extends StatelessWidget {
  const WorkTextColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextColumn(title: "Work Togather", text: 'sjdsajdhd sldkhjdkh');
  }
}
