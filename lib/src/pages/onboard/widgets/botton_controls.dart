import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_ux/src/pages/onboard/onboard_controller.dart';
import 'package:ui_ux/src/utils/colors.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnboardControls extends StatelessWidget {
  const OnboardControls({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _Dots(),
          Consumer<OnboardController>(
            builder: (_, controller, __) {
              final double page = controller.currentPage;
              bool isEnd = page % 1 == 0 && page == 2.0;
              return CupertinoButton(
                child: Text(isEnd ? 'Get Started' : 'Next'),
                onPressed: () {
                  controller.pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                },
                color: primaryColor,
                borderRadius: BorderRadius.circular(30.0),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _Dots extends StatelessWidget {
  const _Dots({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<OnboardController>(context);
    return DotsIndicator(
      dotsCount: controller.items.length,
      position: controller.currentPage,
      decorator: DotsDecorator(
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        color: Colors.grey.withOpacity(0.4),
        activeColor: primaryColor,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
