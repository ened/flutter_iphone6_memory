import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          20,
          (i) => Image.asset('assets/icons/meow${i % 3}.jpg'),
        ),
      ),
    );
  }
}
