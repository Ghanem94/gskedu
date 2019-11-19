import 'package:flutter/material.dart';

alertMessage(BuildContext context,String title,String body,String bottonText) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return Directionality(textDirection: TextDirection.rtl,
              child: AlertDialog(
          title: Text("$title",style: TextStyle(color: Colors.redAccent),),
          content:  Text("$body"),
          actions: <Widget>[
            FlatButton(
              child: Text("$bottonText"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    },
  );
}