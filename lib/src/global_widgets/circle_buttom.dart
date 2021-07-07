import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_ux/src/utils/colors.dart';

class CircleButtom extends StatelessWidget {
  final VoidCallback onPressed;
  final String iconPath;
  final double size;
  final Color backgrounColor, iconColor;
  const CircleButtom({
    Key key,
    @required this.onPressed,
    @required this.iconPath,
    this.size = 40,
    this.backgrounColor = primaryColor,
    this.iconColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: this.onPressed,
      padding: EdgeInsets.zero,
      child: Container(
        width: this.size,
        height: this.size,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: this.backgrounColor,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          this.iconPath,
          color: this.iconColor,
        ),
      ),
    );
  }
}
