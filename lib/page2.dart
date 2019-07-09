import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iphone6_memory/constants.dart';

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kMidToneBlue85,
      child: SingleChildScrollView(
        child: Wrap(
          children: List.generate(
            200,
            (i) => SvgPicture.asset('assets/icons/sounds.svg'),
          ),
        ),
      ),
    );
  }
}
