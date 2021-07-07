import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_ux/src/pages/onboard/widgets/slider.dart';

import 'onboard_controller.dart';
import 'widgets/botton_controls.dart';

//SE UTILIZA PROVIDER PARA GESTIONAR EL ESTADO
//ESTO SE HACE CON UN STALESSWIDGET
class OnboardPage extends StatelessWidget {
  const OnboardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<OnboardController>(
      create: (_) {
        final controller = OnboardController();
        WidgetsBinding.instance.addPersistentFrameCallback((_) {
          controller.afterFirstLayout();
        });
        return controller;
      },
      builder: (context, __) => Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                  child: Container(),
                ),
                OnboardSlider(),
                SizedBox(height: 50.0),
                OnboardControls(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
