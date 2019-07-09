import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iphone6_memory/constants.dart';
import 'package:iphone6_memory/gradient_line.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({
    Key key,
  }) : super(key: key);

  static const iconHeight = 42.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const GradientLine(),
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildButton(
                SvgPicture.asset(
                  'assets/icons/blue_home.svg',
                  height: MyBottomBar.iconHeight,
                ),
                'Home',
                () {},
              ),
              const SizedBox(width: 1.0),
              _buildButton(
                SvgPicture.asset(
                  'assets/icons/blue_library.svg',
                  height: MyBottomBar.iconHeight,
                ),
                'Library',
                () {},
              ),
              const SizedBox(width: 1.0),
              _buildButton(
                SvgPicture.asset(
                  'assets/icons/blue_dashcam.svg',
                  height: MyBottomBar.iconHeight,
                ),
                'XX DDD',
                () {},
              ),
              _buildButton(
                SvgPicture.asset(
                  'assets/icons/sos_emerg.svg',
                  height: MyBottomBar.iconHeight,
                ),
                'XXX',
                () {},
                backgroundColor: Colors.red,
                iconColor: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildButton(
    Widget icon,
    String title,
    VoidCallback onPressed, {
    Color backgroundColor = kSecondaryDarkBlue,
    Color iconColor = kLightBlue,
  }) {
    return Expanded(
      child: FlatButton(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        color: backgroundColor,
        shape: Border.all(
          style: BorderStyle.solid,
          color: Colors.transparent,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              icon,
              Text(
                title,
                style: const TextStyle(fontSize: 12.0),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
