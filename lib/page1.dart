import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iphone6_memory/constants.dart';
import 'package:iphone6_memory/gradient_line.dart';
import 'package:iphone6_memory/gradient_painter.dart';

class Page1 extends StatelessWidget {
  const Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              child: Center(
                child: Text(
                  'Display Live',
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .apply(color: Colors.white),
                ),
              ),
            ),
          ),
          GradientLine(),
          Container(
            color: Colors.blueGrey,
            child: Row(
              children: <Widget>[
                Expanded(child: Text('DEVICE'), flex: 2),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text('DEVICE'),
                      Text('DEVICE'),
                      Text('DEVICE'),
                    ],
                  ),
                  flex: 4,
                )
              ],
            ),
          ),
          GradientLine(),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Feature Description',
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .apply(color: Colors.white),
                ),
                SizedBox(height: 8),
                RaisedButton(
                  child: Text('Open another feature'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          GradientLine(),
          InkWell(
            onTap: () {
              //
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: CustomPaint(
                    painter: GradientPainter(),
                    child: AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 4,
                        ),
                        child: Center(
                          child: Text(
                            'ABC DEF GHI JKL',
                            style: Theme.of(context).textTheme.headline,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: SvgPicture.asset(
                      'assets/icons/police-map.svg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                )
              ],
            ),
          ),
          GradientLine(),
          InkWell(
            onTap: () {
              //
            },
            child: Container(
              child: AspectRatio(
                aspectRatio: 1000 / 375,
                child: SvgPicture.asset(
                  'assets/icons/series2_modules.svg',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
