import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iphone6_memory/page1.dart';
import 'package:iphone6_memory/page2.dart';
import 'package:iphone6_memory/page3.dart';

void main() => runApp(MyApp());

MethodChannel _appChannel = MethodChannel('com.app/app');

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

void _engineEntryPoint() {
  print('engine has been started!');
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _counter = 0;
  TabController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );

    // The following timer will not trigger the bug as memory consumption will
    // stay around 160MB on a iPhone 6+.
    // Timer.periodic(Duration(milliseconds: 400), (timer) {
    //   if (!mounted) {
    //     timer.cancel();
    //     return;
    //   }
    //   setState(() => _counter += 1);
    //   _controller.animateTo(_counter % 3, duration: Duration.zero);
    // });

    // The trick is to interact with the App like a monkey. Touch all elements
    // rapidly and without clear pattern, switch tabs, scroll etc.
    _controller.addListener(() => setState(() => _counter = _controller.index));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('${widget.title} $_counter'),
          bottom: TabBar(
            controller: _controller,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_bus)),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.motorcycle),
              onPressed: () {
                _appChannel.invokeMethod('engine.start', {
                  'dispatcher.key':
                      PluginUtilities.getCallbackHandle(_engineEntryPoint)
                          .toRawHandle()
                });
              },
            ),
          ],
        ),
        body: Builder(builder: (context) {
          switch (_counter % 3) {
            case 0:
              return Page1();
            case 1:
              return Page2();
            default:
              return Page3();
          }
        }),
      ),
    );
  }
}
