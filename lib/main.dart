import 'package:bot_toast_example/BotToastExample.dart';
import 'package:flutter/material.dart';
import 'package:bot_toast/bot_toast.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BotToastInit(
        child:MaterialApp(
          title: 'BotToast Demo',
          navigatorObservers: [BotToastNavigatorObserver()],//2.registered route observer
          home: BotToastExample(),
        )
    );
  }
}

