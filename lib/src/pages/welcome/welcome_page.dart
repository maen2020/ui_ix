import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_ux/src/global_widgets/circle_buttom.dart';
import 'package:ui_ux/src/global_widgets/rounded_buttom.dart';
import 'package:ui_ux/src/utils/font_styles.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SvgPicture.asset(
                    'assets/pages/welcome/welcome.svg',
                  ),
                ),
              ),
              Text(
                'Welcome',
                style: FontStyles.title,
              ),
              SizedBox(height: 20.0),
              Text(
                'Exceptur sint occaecat cupidatat non \n proident sunt in culpa qui officia',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.0),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 280,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: RoundedButton(
                        onPressed: () {},
                        label: 'Login',
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Expanded(
                      child: RoundedButton(
                        onPressed: () {},
                        label: 'Sing Up',
                        textColor: Colors.black,
                        backgroundColor: Colors.white,
                        borderColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'Or via social media',
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleButtom(
                    onPressed: () {},
                    iconPath: 'assets/pages/welcome/facebook.svg',
                    backgrounColor: Colors.blueAccent,
                  ),
                  SizedBox(width: 10.0),
                  CircleButtom(
                    onPressed: () {},
                    iconPath: 'assets/pages/welcome/google.svg',
                    backgrounColor: Colors.redAccent,
                  ),
                  SizedBox(width: 10.0),
                  CircleButtom(
                    onPressed: () {},
                    iconPath: 'assets/pages/welcome/apple.svg',
                    backgrounColor: Colors.grey,
                  ),
                ],
              ),
              SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
