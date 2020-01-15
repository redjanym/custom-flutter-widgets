import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//
// A helper class to generate SnackBar notifications everywhere in the app's codebase
// without being limited to Scafold inherited widgets
//
class NotificationManager {
  static BuildContext context;
  static Color successBackgroundColor = Colors.black;
  static Color errorBackgroundColor = Colors.red;

  static generateNewSuccessNotification(String message, {fast: false}) {
    SnackBar newNotification = SnackBar(
      content: Text(
        message,
        style: TextStyle(fontSize: 17),
      ),
      backgroundColor: successBackgroundColor,
      duration: Duration(milliseconds: fast ? 500 : 1000),
    );

    if (context == null) {
      return;
    }

    Scaffold.of(context).showSnackBar(newNotification);
  }

  static generateNewErrorNotification(String message, {fast: false}) {
    SnackBar newNotification = SnackBar(
      content: Text(
        message,
        style: TextStyle(fontSize: 17),
      ),
      backgroundColor: errorBackgroundColor,
      duration: Duration(milliseconds: fast ? 500 : 1000),
    );

    if (context == null) {
      return;
    }

    Scaffold.of(context).showSnackBar(newNotification);
  }
}
