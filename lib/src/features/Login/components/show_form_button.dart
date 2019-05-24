import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ShowFormButton extends StatelessWidget {
  ShowFormButton({ @required this.onPress });

  final onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Stack(
        children: <Widget>[
          Center(
            child: Icon(
              Icons.arrow_upward,
              color: Colors.red,
              size: 70,
            ),
          ),
          SpinKitRipple(
            size: 500,
            borderWidth: 50,
            duration: Duration(seconds: 2),
            color: Colors.grey.withOpacity(0.25),
          ),
        ],
      ),
    );
  }
}
