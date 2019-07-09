import 'package:flutter/material.dart';
import 'package:iphone6_memory/constants.dart';

class Page1 extends StatelessWidget {
  const Page1({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSecondaryDarkBlue70,
      child: Text('Select the other tabs and switch back here.'),
    );
  }
}
