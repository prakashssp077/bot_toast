import 'package:flutter/material.dart';
import 'package:bot_toast/bot_toast.dart';

class BotToastExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("show text"),
              onPressed: (){
                BotToast.showText(text:"Sample text ");
              },
            ),
            RaisedButton(
              child: Text("show Simple Notification"),
              onPressed: (){
                BotToast.showSimpleNotification(title:"Sample text",hideCloseButton: true);
              },
            ),
            RaisedButton(
              child: Text("show Loadig"),
              onPressed: (){
                BotToast.showLoading(clickClose: true);
              },
            ),
            RaisedButton(
              child: Text("show Attached widget"),
              onPressed: (){
                BotToast.showAttachedWidget(
                    attachedBuilder: (_) => Center(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ),
                    duration: Duration(seconds: 2),
                    target: Offset(520, 520));
              },
            ),
            RaisedButton(
              child: Text("Custom Toast"),
              onPressed: () {
                BotToast.showText(
                  text: "Simple Text",
                );
                BotToast.showSimpleNotification(
                  title: "Simple",
                );
                BotToast.showLoading(clickClose: true);
                BotToast.showAttachedWidget(
                    attachedBuilder: (_) => Center(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ),
                    duration: Duration(seconds: 2),
                    target: Offset(520, 520));
                // BotToast.showLoading();
              },
            ),
          ],
        ),
      ),
    );
  }

}