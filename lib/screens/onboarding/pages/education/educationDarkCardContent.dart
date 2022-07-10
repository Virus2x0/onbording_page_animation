import 'package:animation_in_boarding/widgets/icon_container.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../widgets/text_column.dart';

class EducationDarkCardContent extends StatelessWidget {
  const EducationDarkCardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.laptop_mac, color: kWhite, size: 95);
  }
}

class EduactionLightCardContent extends StatelessWidget {
  const EduactionLightCardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconContainer(icon: Icons.brush, padding: kPaddingS),
        IconContainer(
          icon: Icons.camera_alt,
          padding: kPaddingS,
        ),
        IconContainer(
          icon: Icons.straighten,
          padding: kPaddingS,
        )
      ],
    );
  }
}

class EducationtextColumn extends StatelessWidget {
  const EducationtextColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextColumn(
      text: 'Keep Learning',
      title: 'hsdujadjshdjasdhskldj asdjh',
    );
  }
}
