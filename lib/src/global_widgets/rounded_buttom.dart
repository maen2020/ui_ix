import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_ux/src/utils/colors.dart';
import 'package:ui_ux/src/utils/font_styles.dart';

class RoundedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color textColor, backgroundColor, borderColor;
  const RoundedButton({
    Key key,
    @required this.onPressed,
    @required this.label,
    this.textColor = Colors.white,
    this.backgroundColor = primaryColor,
    this.borderColor = primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 30.0),
        decoration: BoxDecoration(
          color: this.backgroundColor,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            width: 1.5,
            color: this.borderColor,
          ),
        ),
        child: Text(
          this.label,
          textAlign: TextAlign.center,
          style: FontStyles.normal.copyWith(
            fontWeight: FontWeight.w700,
            color: this.textColor,
          ),
        ),
      ),
      minSize: 30.0,
      padding: EdgeInsets.zero,
      onPressed: this.onPressed,
    );
  }
}
