import 'package:flutter/material.dart';
import 'package:iphone6_memory/constants.dart';

class Page3 extends StatelessWidget {
  const Page3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kLightBlue25,
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(
            20,
            (i) => Image.asset('assets/icons/meow${i % 3}.jpg'),
          ),
        ),
      ),
    );
  }
}
