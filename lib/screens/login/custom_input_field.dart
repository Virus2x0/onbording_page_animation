import 'package:animation_in_boarding/constants.dart';
import 'package:flutter/material.dart';

class CustomInptField extends StatelessWidget {
  final String label;
  final IconData preFixIcon;
  final bool obsecureText;
  const CustomInptField(
      {Key? key,
      required this.label,
      required this.preFixIcon,
      required this.obsecureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(kPaddingM),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.12),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.12),
          ),
        ),
        hintText: label,
        hintStyle: TextStyle(
          color: kBlack.withOpacity(0.5),
          fontWeight: FontWeight.bold,
        ),
        prefixIcon: Icon(
          preFixIcon,
          color: kBlack.withOpacity(0.5),
        ),
      ),
      obscureText: obsecureText,
    );
  }
}
