library overlay_loading;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showLoading(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return WillPopScope(
        onWillPop: () {},
        child: Dialog(
          child: Container(
            color: Colors.white,
            height: 50,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CupertinoActivityIndicator(),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Sedang memproses...'),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

void dismissLoading(BuildContext context) {
  Navigator.of(context, rootNavigator: true).pop('dialog');
}