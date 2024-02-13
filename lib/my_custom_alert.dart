library my_custom_alert;

import 'package:flutter/material.dart';

class MyCustomAlert {
  static Future showCustomAlert({
    required BuildContext context,
    required Widget alertContent,
    required String buttonText,
    TextStyle? buttonStyle,
  }) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                15.0,
              ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              alertContent,
              MaterialButton(
                color: Colors.white,
                child: Text(
                  buttonText,
                  style: buttonStyle,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          elevation: 10.0,
        );
      },
    );
  }
}
